/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

// @flow

import React, { PureComponent } from 'react';
import classNames from 'classnames';
import {
  changeRightClickedTrack,
  selectTrack,
} from 'firefox-profiler/actions/profile-view';
import { assertExhaustiveCheck } from 'firefox-profiler/utils/flow';
import { ContextMenuTrigger } from 'firefox-profiler/components/shared/ContextMenuTrigger';
import {
  getSelectedThreadIndexes,
  getSelectedTab,
  getHiddenLocalTracks,
} from 'firefox-profiler/selectors/url-state';
import explicitConnect from 'firefox-profiler/utils/connect';
import {
  getLocalTrackName,
  getCounterSelectors,
} from 'firefox-profiler/selectors/profile';
import { getThreadSelectors } from 'firefox-profiler/selectors/per-thread';
import { TimelineTrackThread } from './TrackThread';
import { TrackEventDelay } from './TrackEventDelay';
import { TrackNetwork } from './TrackNetwork';
import { TrackMemory } from './TrackMemory';
import { TrackIPC } from './TrackIPC';
import { TrackProcessCPU } from './TrackProcessCPU';
import { TrackPower } from './TrackPower';
import { getTrackSelectionModifier } from 'firefox-profiler/utils';
import type {
  TrackReference,
  Pid,
  TrackIndex,
  LocalTrack,
  MixedObject,
} from 'firefox-profiler/types';

import type { ConnectedProps } from 'firefox-profiler/utils/connect';

type OwnProps = {|
  +pid: Pid,
  +localTrack: LocalTrack,
  +trackIndex: TrackIndex,
  +style?: MixedObject /* This is used by Reorderable */,
  +setIsInitialSelectedPane: (value: boolean) => void,
|};

type StateProps = {|
  +trackName: string,
  +isSelected: boolean,
  +isHidden: boolean,
  +titleText: string | null,
|};

type DispatchProps = {|
  +changeRightClickedTrack: typeof changeRightClickedTrack,
  +selectTrack: typeof selectTrack,
|};

type Props = ConnectedProps<OwnProps, StateProps, DispatchProps>;

class LocalTrackComponent extends PureComponent<Props> {
  _onContextMenu = () => {
    // Notify the redux store that this was right clicked.
    this.props.changeRightClickedTrack(this._getTrackReference());
  };

  _selectCurrentTrack = (
    event: SyntheticMouseEvent<> | SyntheticKeyboardEvent<>
  ) => {
    this.props.selectTrack(
      this._getTrackReference(),
      getTrackSelectionModifier(event)
    );
  };

  _getTrackReference(): TrackReference {
    const { pid, trackIndex } = this.props;
    return { type: 'local', pid, trackIndex };
  }

  renderTrack() {
    const { localTrack, trackName } = this.props;
    switch (localTrack.type) {
      case 'thread':
        return (
          <TimelineTrackThread
            threadsKey={localTrack.threadIndex}
            trackType="expanded"
            trackName={trackName}
          />
        );
      case 'network':
        return <TrackNetwork threadIndex={localTrack.threadIndex} />;
      case 'memory':
        return <TrackMemory counterIndex={localTrack.counterIndex} />;
      case 'ipc':
        return <TrackIPC threadIndex={localTrack.threadIndex} />;
      case 'event-delay':
        return <TrackEventDelay threadIndex={localTrack.threadIndex} />;
      case 'process-cpu':
        return <TrackProcessCPU counterIndex={localTrack.counterIndex} />;
      case 'power':
        return <TrackPower counterIndex={localTrack.counterIndex} />;
      default:
        console.error('Unhandled localTrack type', (localTrack: empty));
        return null;
    }
  }

  componentDidMount() {
    const { isSelected } = this.props;
    if (isSelected) {
      this.props.setIsInitialSelectedPane(true);
    }
  }

  render() {
    const { isSelected, isHidden, titleText, trackName, style } = this.props;

    if (isHidden) {
      // If this global track is hidden, render out a stub element so that the
      // Reorderable Component still works across all the tracks.
      return <li className="timelineTrackHidden" />;
    }

    return (
      <li className="timelineTrack timelineTrackLocal" style={style}>
        {/* This next div is used to mirror the structure of the TimelineGlobalTrack */}
        <div
          className={classNames('timelineTrackRow timelineTrackLocalRow', {
            selected: isSelected,
          })}
          onClick={this._selectCurrentTrack}
        >
          <ContextMenuTrigger
            id="TimelineTrackContextMenu"
            renderTag="div"
            attributes={{
              title: titleText,
              className:
                'timelineTrackLabel timelineTrackLocalLabel timelineTrackLocalGrippy',
              onContextMenu: this._onContextMenu,
            }}
          >
            <button type="button" className="timelineTrackNameButton">
              {trackName}
            </button>
          </ContextMenuTrigger>
          <div className="timelineTrackTrack">{this.renderTrack()}</div>
        </div>
      </li>
    );
  }
}

export const TimelineLocalTrack = explicitConnect<
  OwnProps,
  StateProps,
  DispatchProps
>({
  mapStateToProps: (state, { pid, localTrack, trackIndex }) => {
    // These get assigned based on the track type.
    let titleText = null;
    let isSelected = false;

    const selectedThreadIndexes = getSelectedThreadIndexes(state);

    // Run different selectors based on the track type.
    switch (localTrack.type) {
      case 'thread': {
        // Look up the thread information for the process if it exists.
        const threadIndex = localTrack.threadIndex;
        const selectedTab = getSelectedTab(state);
        const selectors = getThreadSelectors(threadIndex);
        isSelected =
          selectedThreadIndexes.has(threadIndex) &&
          selectedTab !== 'network-chart';
        titleText = selectors.getThreadProcessDetails(state);
        break;
      }
      case 'network': {
        const threadIndex = localTrack.threadIndex;
        const selectedTab = getSelectedTab(state);
        isSelected =
          selectedThreadIndexes.has(threadIndex) &&
          selectedTab === 'network-chart';
        break;
      }
      case 'memory': {
        titleText = getCounterSelectors(localTrack.counterIndex).getDescription(
          state
        );
        break;
      }
      case 'ipc': {
        const threadIndex = localTrack.threadIndex;
        const selectedTab = getSelectedTab(state);
        isSelected =
          selectedThreadIndexes.has(threadIndex) &&
          selectedTab === 'marker-chart';
        break;
      }
      case 'event-delay': {
        // Look up the thread information for the process if it exists.
        const threadIndex = localTrack.threadIndex;
        const selectors = getThreadSelectors(threadIndex);
        isSelected = threadIndex === selectedThreadIndexes.has(threadIndex);
        titleText =
          'Event Delay of ' + selectors.getThreadProcessDetails(state);
        break;
      }
      case 'process-cpu':
      case 'power': {
        titleText = getCounterSelectors(localTrack.counterIndex).getDescription(
          state
        );
        break;
      }
      default:
        throw assertExhaustiveCheck(localTrack, `Unhandled LocalTrack type.`);
    }

    return {
      trackName: getLocalTrackName(state, pid, trackIndex),
      titleText,
      isSelected,
      isHidden: getHiddenLocalTracks(state, pid).has(trackIndex),
    };
  },
  mapDispatchToProps: {
    changeRightClickedTrack,
    selectTrack,
  },
  component: LocalTrackComponent,
});
