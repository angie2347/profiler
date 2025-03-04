# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


### Localization for the App UI of Profiler


# Naming convention for l10n IDs: "ComponentName--string-summary".
# This allows us to minimize the risk of conflicting IDs throughout the app.
# Please sort alphabetically by (component name), and
# keep strings in order of appearance.


## The following feature names must be treated as a brand. They cannot be translated.

-firefox-brand-name = Firefox
-profiler-brand-name = Firefox Profiler
-profiler-brand-short-name = Profiler
-firefox-nightly-brand-name = Firefox Nightly

## AppHeader
## This is used at the top of the homepage and other content pages.

AppHeader--app-header = <header>{ -profiler-brand-name }</header> — <subheader>Διαδικτυακή εφαρμογή για την ανάλυση των επιδόσεων του { -firefox-brand-name }</subheader>
AppHeader--github-icon =
    .title = Μετάβαση στο αποθετήριο Git μας (ανοίγει σε νέο παράθυρο)

## AppViewRouter
## This is used for displaying errors when loading the application.

AppViewRouter--error-unpublished = Δεν ήταν δυνατή η ανάκτηση του προφίλ από το { -firefox-brand-name }.
AppViewRouter--error-from-file = Δεν ήταν δυνατή η ανάγνωση του αρχείου ή η ανάλυση του προφίλ σε αυτό.
AppViewRouter--error-local = Δεν έχει υλοποιηθεί ακόμα.
AppViewRouter--error-public = Δεν ήταν δυνατή η λήψη του προφίλ.
AppViewRouter--error-from-url = Δεν ήταν δυνατή η λήψη του προφίλ.
AppViewRouter--error-compare = Δεν ήταν δυνατή η ανάκτηση των προφίλ.
# This error message is displayed when a Safari-specific error state is encountered.
# Importing profiles from URLs such as http://127.0.0.1:someport/ is not possible in Safari.
# https://profiler.firefox.com/from-url/http%3A%2F%2F127.0.0.1%3A3000%2Fprofile.json/
AppViewRouter--error-from-localhost-url-safari =
    Λόγω ενός <a>συγκεκριμένου περιορισμού στο Safari</a>, το { -profiler-brand-name } δεν μπορεί να
    εισαγάγει προφίλ από τη συσκευή σε αυτό το πρόγραμμα περιήγησης. Παρακαλούμε
    ανοίξτε αυτήν τη σελίδα στο { -firefox-brand-name } ή το Chrome.
    .title = Το Safari δεν μπορεί να εισαγάγει τοπικά προφίλ
AppViewRouter--route-not-found--home =
    .specialMessage = Δεν αναγνωρίστηκε το URL που προσπαθήσατε να μεταβείτε.

## CallNodeContextMenu
## This is used as a context menu for the Call Tree, Flame Graph and Stack Chart
## panels.

CallNodeContextMenu--transform-merge-function = Συγχώνευση συνάρτησης
    .title =
        Η συγχώνευση μιας συνάρτησης την αφαιρεί από το προφίλ και αναθέτει το χρόνο της στη
        συνάρτηση που την κάλεσε. Αυτό συμβαίνει οπουδήποτε κλήθηκε η συνάρτηση
        στο δέντρο.
CallNodeContextMenu--transform-merge-call-node = Συγχώνευση κόμβου μόνο
    .title =
        Η συγχώνευση κόμβου τον αφαιρεί από το προφίλ και αναθέτει το χρόνο του
        στον κόμβο της συνάρτησης που τον κάλεσε. Αφαιρεί μόνο τη συνάρτηση από
        αυτό το συγκεκριμένο μέρος του δέντρου. Τα υπόλοιπα μέρη από τα οποία
        κλήθηκε η συνάρτηση θα παραμείνουν στο προφίλ.
# This is used as the context menu item title for "Focus on function" and "Focus
# on function (inverted)" transforms.
CallNodeContextMenu--transform-focus-function-title =
    Η εστίαση σε συνάρτηση θα αφαιρέσει κάθε δείγμα που δεν περιλαμβάνει αυτή
    τη συνάρτηση. Επιπλέον, ριζώνει εκ νέου το δέντρο κλήσεων ώστε η συνάρτηση
    να είναι η μόνη ρίζα του δέντρου. Αυτό μπορεί να συνδυάσει πολλαπλές τοποθεσίες κλήσεων
    συνάρτησης εντός ενός προφίλ σε έναν κόμβο κλήσης.
CallNodeContextMenu--transform-focus-function = Εστίαση στη συνάρτηση
    .title = { CallNodeContextMenu--transform-focus-function-title }
CallNodeContextMenu--transform-focus-function-inverted = Εστίαση στη συνάρτηση (ανεστραμμένη)
    .title = { CallNodeContextMenu--transform-focus-function-title }
CallNodeContextMenu--transform-focus-subtree = Εστίαση στο υπόδεντρο μόνο
    .title =
        Η εστίαση σε υπόδεντρο θα αφαιρέσει κάθε δείγμα που δεν περιλαμβάνει αυτό το
        συγκεκριμένο μέρος του δέντρου κλήσεων. Αποσύρει έναν κλάδο του δέντρου κλήσεων,
        ωστόσο το κάνει μόνο για αυτόν τον κόμβο κλήσεων. Όλες οι άλλες κλήσεις
        της συνάρτησης παραβλέπονται.
CallNodeContextMenu--transform-collapse-function-subtree = Σύμπτυξη συνάρτησης
    .title =
        Η σύμπτυξη συνάρτησης θα αφαιρέσει ό,τι έχει καλέσει αυτή και θα αναθέσει
        όλο τον χρόνο στη συνάρτηση. Αυτό μπορεί να απλοποιήσει ένα προφίλ που
        καλεί στον κώδικα ότι δεν χρειάζεται να αναλυθεί.
# This is used as the context menu item to apply the "Collapse resource" transform.
# Variables:
#   $nameForResource (String) - Name of the resource to collapse.
CallNodeContextMenu--transform-collapse-resource = Σύμπτυξη <strong>{ $nameForResource }</strong>
    .title =
        Η σύμπτυξη πόρου θα εξομαλύνει όλες τις κλήσεις σε αυτό
        τον πόρο σε ένα μόνο συμπτυγμένο κόμβο κλήσεων.
CallNodeContextMenu--transform-collapse-direct-recursion = Σύμπτυξη άμεσης επανάληψης
    .title =
        Η σύμπτυξη άμεσης επανάληψης αφαιρεί τις κλήσεις που επαναλαμβάνονται συνεχώς στην
        ίδια συνάρτηση.
CallNodeContextMenu--transform-drop-function = Απόρριψη δειγμάτων με αυτή τη συνάρτηση
    .title =
        Η απόρριψη δειγμάτων αφαιρεί τον χρόνο τους από το προφίλ. Αυτό είναι χρήσιμο για την
        εξάλειψη στοιχείων χρόνου που δεν είναι σχετικά για την ανάλυση.
CallNodeContextMenu--expand-all = Ανάπτυξη όλων
# Searchfox is a source code indexing tool for Mozilla Firefox.
# See: https://searchfox.org/
CallNodeContextMenu--searchfox = Αναζήτηση ονόματος συνάρτησης στο Searchfox
CallNodeContextMenu--copy-function-name = Αντιγραφή ονόματος συνάρτησης
CallNodeContextMenu--copy-script-url = Αντιγραφή URL σεναρίου
CallNodeContextMenu--copy-stack = Αντιγραφή στοίβας

## CallTree
## This is the component for Call Tree panel.

CallTree--tracing-ms-total = Χρόνος εκτέλεσης (ms)
    .title =
        Ο “συνολικός” χρόνος εκτέλεσης περιλαμβάνει μια περίληψη όλου του χρόνου όπου
        παρατηρήθηκε αυτή η συνάρτηση σε στοίβα. Περιέχει τον χρόνο πραγματικής
        εκτέλεσης της συνάρτησης και τον χρόνο που χρησιμοποιήθηκε στους καλούντες από
        αυτή τη συνάρτηση.
CallTree--tracing-ms-self = Ιδιοχρόνος (ms)
    .title =
        Ο ατομικός χρόνος περιλαμβάνει μόνο τον χρόνο που η συνάρτηση βρισκόταν
        στο τέλος της στοίβας. Αν η συνάρτηση καλούταν σε άλλες συναρτήσεις,
        τότε ο χρόνος των άλλων συναρτήσεων δεν περιλαμβάνεται. Ο ατομικός χρόνος είναι
        χρήσιμος για να κατανοήσετε πώς ξοδεύτηκε ο χρόνος σε ένα πρόγραμμα.
CallTree--samples-total = Σύνολο (δείγματα)
    .title = Το «σύνολο» δειγμάτων περιλαμβάνει μια σύνοψη όλων των δειγμάτων στα οποία παρατηρήθηκε ότι η συνάρτηση βρίσκεται στη στοίβα. Περιλαμβάνει τον χρόνο που εκτελούταν η συνάρτηση και τον χρόνο που ξοδεύτηκε στις κλήσεις από αυτήν τη συνάρτηση.
CallTree--samples-self = Ιδιοαριθμός
    .title =
        Ο ατομικός αριθμός δειγμάτων περιλαμβάνει μόνο τα δείγματα στα οποία η συνάρτηση
        ήταν στο τέλος της στοίβας. Αν η συνάρτηση κλήθηκε σε άλλες συναρτήσεις,
        τότε τα πλήθη των άλλων συναρτήσεων δεν συμπεριλαμβάνονται. Ο ατομικός αριθμός είναι χρήσιμος
        για να κατανοήσετε πώς ξοδεύτηκε ο χρόνος σε ένα πρόγραμμα.
CallTree--bytes-total = Συνολικό μέγεθος (bytes)
    .title =
        Το συνολικό μέγεθος περιλαμβάνει μια σύνοψη όλων των bytes που δεσμεύτηκαν ή
        αποδεσμεύτηκαν όσο παρατηρήθηκε ότι η συνάρτηση είναι στο τέλος της στοίβας.
        Περιλαμβάνει το μέγεθος σε bytes όπου εκτελούταν η συνάρτηση, καθώς και τα
        bytes των καλούντων από αυτήν τη συνάρτηση.
CallTree--bytes-self = Ιδιο-bytes (bytes)
    .title =
        Τα ατομικά bytes περιλαμβάνουν τα bytes που δεσμεύθηκαν ή αποδεσμεύθηκαν
        όσο η συνάρτηση ήταν στο τέλος της στοίβας. Αν η συνάρτηση κλήθηκε σε άλλες
        συναρτήσεις, τότε τα bytes των άλλων συναρτήσεων δεν συμπεριλαμβάνονται.
        Τα ατομικά bytes είναι χρήσιμα για να κατανοήσετε πού δεσμεύθηκε ή
        αποδεσμεύθηκε μνήμη στο πρόγραμμα.

## Call tree "badges" (icons) with tooltips
##
## These inlining badges are displayed in the call tree in front of some
## functions for native code (C / C++ / Rust). They're a small "inl" icon with
## a tooltip.

# Variables:
#   $calledFunction (String) - Name of the function whose call was sometimes inlined.
CallTree--divergent-inlining-badge =
    .title = Ορισμένες κλήσεις στην { $calledFunction } ενσωματώθηκαν από τον μεταγλωττιστή.
# Variables:
#   $calledFunction (String) - Name of the function whose call was inlined.
#   $outerFunction (String) - Name of the outer function into which the called function was inlined.
CallTree--inlining-badge = (ενσωματωμένη)
    .title = Οι κλήσεις στη { $calledFunction } ενσωματώθηκαν στη { $outerFunction } από τον μεταγλωττιστή.

## CallTreeSidebar
## This is the sidebar component that is used in Call Tree and Flame Graph panels.

CallTreeSidebar--select-a-node = Επιλέξτε κόμβο για προβολή πληροφοριών σχετικά με αυτόν.

## CompareHome
## This is used in the page to compare two profiles.
## See: https://profiler.firefox.com/compare/

CompareHome--instruction-title = Εισαγάγετε τα URL των προφίλ που θέλετε να συγκρίνετε
CompareHome--instruction-content =
    Το εργαλείο θα εξαγάγει τα δεδομένα από το επιλεγμένο κομμάτι και εύρος για
    κάθε προφίλ και θα τα τοποθετήσει στην ίδια προβολή για ευκολότερη
    σύγκριση.
CompareHome--form-label-profile1 = Προφίλ 1:
CompareHome--form-label-profile2 = Προφίλ 2:
CompareHome--submit-button =
    .value = Ανάκτηση προφίλ

## DebugWarning
## This is displayed at the top of the analysis page when the loaded profile is
## a debug build of Firefox.

DebugWarning--warning-message =
    .message =
        Το προφίλ καταγράφηκε σε έκδοση χωρίς βελτιστοποιήσεις κανονικής κυκλοφορίας.
        Οι παρατηρήσεις επιδόσεων ενδέχεται να μην ισχύουν για τους χρήστες της κανονικής έκδοσης.

## Details
## This is the bottom panel in the analysis UI. They are generic strings to be
## used at the bottom part of the UI.

Details--open-sidebar-button =
    .title = Άνοιγμα πλευρικής στήλης
Details--close-sidebar-button =
    .title = Κλείσιμο πλευρικής στήλης
Details--error-boundary-message =
    .message = Ωχ, προέκυψε άγνωστο σφάλμα σε αυτόν τον πίνακα.

## Footer Links

FooterLinks--legal = Νομικά
FooterLinks--Privacy = Απόρρητο
FooterLinks--Cookies = Cookies
FooterLinks--languageSwitcher--select =
    .title = Αλλαγή γλώσσας
FooterLinks--hide-button =
    .title = Απόκρυψη συνδέσμων υποσέλιδου
    .aria-label = Απόκρυψη συνδέσμων υποσέλιδου

## FullTimeline
## The timeline component of the full view in the analysis UI at the top of the
## page.

FullTimeline--graph-type = Τύπος γραφήματος:
FullTimeline--categories-with-cpu = Κατηγορίες με CPU
FullTimeline--categories = Κατηγορίες
FullTimeline--stack-height = Ύψος στοίβας
# This string is used as the text of the track selection button.
# Displays the ratio of visible tracks count to total tracks count in the timeline.
# We have spans here to make the numbers bold.
# Variables:
#   $visibleTrackCount (Number) - Visible track count in the timeline
#   $totalTrackCount (Number) - Total track count in the timeline
FullTimeline--tracks-button = <span>{ $visibleTrackCount }</span> / <span>{ $totalTrackCount }</span> κομμάτια

## Home page

Home--upload-from-file-input-button = Φόρτωση προφίλ από αρχείο
Home--upload-from-url-button = Φόρτωση προφίλ από URL
Home--load-from-url-submit-button =
    .value = Φόρτωση
Home--documentation-button = Τεκμηρίωση
Home--menu-button = Ενεργοποίηση κουμπιού μενού του { -profiler-brand-name }
Home--menu-button-instructions =
    Ενεργοποιήστε το κουμπί του μενού του εργαλείου καταγραφής για να ξεκινήσετε ένα προφίλ
    επιδόσεων στο { -firefox-brand-name } και έπειτα, να το αναλύσετε και να το μοιραστείτε με το profiler.firefox.com.
# The word WebChannel should not be translated.
# This message can be seen on https://main--perf-html.netlify.app/ in the tooltip
# of the "Enable Firefox Profiler menu button" button.
Home--enable-button-unavailable =
    .title = Αυτή η διεργασία εργαλείου προφίλ δεν ήταν δυνατό να συνδεθεί στο WebChannel, ώστε να μην μπορεί να ενεργοποιήσει το κουμπί του μενού του εργαλείου προφίλ.
# The word WebChannel, the pref name, and the string "about:config" should not be translated.
# This message can be seen on https://main--perf-html.netlify.app/ .
Home--web-channel-unavailable =
    Αυτή η διεργασία του εργαλείου προφίλ δεν μπόρεσε να συνδεθεί στο WebChannel. Αυτό συνήθως σημαίνει
    ότι εκτελείται σε διαφορετικό κεντρικό υπολογιστή από αυτόν που καθορίστηκε στην προτίμηση
    <code>devtools.performance.recording.ui-base-url</code>. Αν θέλετε να καταγράψετε νέα προφίλ
    με αυτή τη διεργασία και να της δώσετε προγραμματικό έλεγχο του κουμπιού του μενού του εργαλείου,
    μπορείτε να μεταβείτε στο <code>about:config</code> και να αλλάξετε την προτίμηση.
Home--record-instructions =
    Για να αρχίσει η καταγραφή προφίλ, κάντε κλικ στο αντίστοιχο κουμπί ή χρησιμοποιήστε
    τις συντομεύσεις πληκτρολογίου. Το εικονίδιο είναι μπλε κατά την καταγραφή ενός προφίλ.
    Πατήστε το <kbd>Καταγραφή</kbd> για να φορτώσετε τα δεδομένα στο profiler.firefox.com.
Home--instructions-title = Τρόπος προβολής και καταγραφής προφίλ
Home--instructions-content =
    Η καταγραφή των προφίλ επιδόσεων απαιτεί το <a>{ -firefox-brand-name }</a>.
    Ωστόσο, τα υπάρχοντα προφίλ μπορούν να προβληθούν σε όλα τα σύγχρονα προγράμματα περιήγησης.
Home--record-instructions-start-stop = Διακοπή και έναρξη δημιουργίας προφίλ
Home--record-instructions-capture-load = Καταγραφή και φόρτωση προφίλ
Home--profiler-motto = Καταγράψτε ένα προφίλ επιδόσεων. Αναλύστε το. Μοιραστείτε το. Κάντε ταχύτερο τον ιστό.
Home--additional-content-title = Φόρτωση υπαρχόντων προφίλ
Home--additional-content-content = Μπορείτε να <strong>σύρετε και να εναποθέσετε</strong> ένα αρχείο προφίλ εδώ για φόρτωση, ή:
Home--compare-recordings-info = Μπορείτε επίσης να συγκρίνετε καταγραφές. <a>Άνοιγμα περιβάλλοντος σύγκρισης.</a>
Home--recent-uploaded-recordings-title = Πρόσφατα μεταφορτωμένες καταγραφές

## IdleSearchField
## The component that is used for all the search inputs in the application.

IdleSearchField--search-input =
    .placeholder = Εισαγάγετε όρους φίλτρου

## JsTracerSettings
## JSTracer is an experimental feature and it's currently disabled. See Bug 1565788.

JsTracerSettings--show-only-self-time = Εμφάνιση μόνο ιδιοχρόνου
    .title = Εμφάνιση μόνο του χρόνου που χρησιμοποιήθηκε σε κόμβο κλήσεων, αγνοώντας τους θυγατρικούς του.

## ListOfPublishedProfiles
## This is the component that displays all the profiles the user has uploaded.
## It's displayed both in the homepage and in the uploaded recordings page.

# This string is used on the tooltip of the published profile links.
# Variables:
#   $smallProfileName (String) - Shortened name for the published Profile.
ListOfPublishedProfiles--published-profiles-link =
    .title = Κάντε κλικ εδώ για φόρτωση του προφίλ { $smallProfileName }
ListOfPublishedProfiles--published-profiles-delete-button-disabled = Διαγραφή
    .title = Δεν είναι δυνατή η διαγραφή αυτού του προφίλ επειδή μας λείπουν πληροφορίες εξουσιοδότησης.
ListOfPublishedProfiles--uploaded-profile-information-list-empty = Δεν έχει μεταφορτωθεί ακόμη κανένα προφίλ!
# This string is used below the 'Recent uploaded recordings' list section.
# Variables:
#   $profilesRestCount (Number) - Remaining numbers of the uploaded profiles which are not listed under 'Recent uploaded recordings'.
ListOfPublishedProfiles--uploaded-profile-information-label = Προβολή και διαχείριση όλων των καταγραφών σας ({ $profilesRestCount } ακόμη)
# Depending on the number of uploaded profiles, the message is different.
# Variables:
#   $uploadedProfileCount (Number) - Total numbers of the uploaded profiles.
ListOfPublishedProfiles--uploaded-profile-information-list =
    { $uploadedProfileCount ->
        [one] Διαχείριση καταγραφής
       *[other] Διαχείριση καταγραφών
    }

## MarkerContextMenu
## This is used as a context menu for the Marker Chart, Marker Table and Network
## panels.

MarkerContextMenu--set-selection-from-duration = Ορισμός επιλογής από τη διάρκεια δείκτη
MarkerContextMenu--start-selection-here = Έναρξη επιλογής εδώ
MarkerContextMenu--end-selection-here = Διακοπή επιλογής εδώ
MarkerContextMenu--start-selection-at-marker-start = Έναρξη επιλογής στην <strong>αρχή</strong> του δείκτη
MarkerContextMenu--start-selection-at-marker-end = Έναρξη επιλογής στο <strong>τέλος</strong> του δείκτη
MarkerContextMenu--end-selection-at-marker-start = Διακοπή επιλογής στην <strong>αρχή</strong> του δείκτη
MarkerContextMenu--end-selection-at-marker-end = Διακοπή επιλογής στο <strong>τέλος</strong> του δείκτη
MarkerContextMenu--copy-description = Αντιγραφή περιγραφής
MarkerContextMenu--copy-call-stack = Αντιγραφή στοίβας κλήσεων
MarkerContextMenu--copy-url = Αντιγραφή URL
MarkerContextMenu--copy-page-url = Αντιγραφή URL σελίδας
MarkerContextMenu--copy-as-json = Αντιγραφή ως JSON
# This string is used on the marker context menu item when right clicked on an
# IPC marker.
# Variables:
#   $threadName (String) - Name of the thread that will be selected.
MarkerContextMenu--select-the-receiver-thread = Επιλέξτε το νήμα παραλήπτη «<strong>{ $threadName }</strong>»
# This string is used on the marker context menu item when right clicked on an
# IPC marker.
# Variables:
#   $threadName (String) - Name of the thread that will be selected.
MarkerContextMenu--select-the-sender-thread = Επιλέξτε το νήμα αποστολέα «<strong>{ $threadName }</strong>»

## MarkerSettings
## This is used in all panels related to markers.

MarkerSettings--panel-search =
    .label = Φιλτράρισμα σημαδιών:
    .title = Εμφάνιση μόνο των σημαδιών που αντιστοιχούν σε ένα συγκεκριμένο όνομα

## MarkerSidebar
## This is the sidebar component that is used in Marker Table panel.

MarkerSidebar--select-a-marker = Επιλέξτε σημάδι για προβολή πληροφοριών σχετικά με αυτό.

## MarkerTable
## This is the component for Marker Table panel.

MarkerTable--start = Έναρξη
MarkerTable--duration = Διάρκεια
MarkerTable--type = Τύπος
MarkerTable--description = Περιγραφή

## MenuButtons
## These strings are used for the buttons at the top of the profile viewer.

MenuButtons--index--metaInfo-button =
    .label = Πληροφορίες προφίλ
MenuButtons--index--full-view = Πλήρης προβολή
MenuButtons--index--cancel-upload = Ακύρωση μεταφόρτωσης
MenuButtons--index--share-upload =
    .label = Μεταφόρτωση τοπικού προφίλ
MenuButtons--index--share-re-upload =
    .label = Νέα μεταφόρτωση
MenuButtons--index--share-error-uploading =
    .label = Σφάλμα μεταφόρτωσης
MenuButtons--index--revert = Επιστροφή στο αρχικό προφίλ
MenuButtons--index--docs = Έγγραφα
MenuButtons--permalink--button =
    .label = Μόνιμος σύνδεσμος

## MetaInfo panel
## These strings are used in the panel containing the meta information about
## the current profile.

MenuButtons--index--profile-info-uploaded-label = Μεταφορτωμένα:
MenuButtons--index--profile-info-uploaded-actions = Διαγραφή
MenuButtons--index--metaInfo-subtitle = Πληροφορίες προφίλ
MenuButtons--metaInfo--symbols = Σύμβολα:
MenuButtons--metaInfo--profile-symbolicated = Το προφίλ είναι συμβολισμένο
MenuButtons--metaInfo--profile-not-symbolicated = Το προφίλ δεν είναι συμβολισμένο
MenuButtons--metaInfo--resymbolicate-profile = Επανασυμβολισμός προφίλ
MenuButtons--metaInfo--symbolicate-profile = Συμβολισμός προφίλ
MenuButtons--metaInfo--attempting-resymbolicate = Απόπειρα επανασυμβολισμού προφίλ
MenuButtons--metaInfo--currently-symbolicating = Γίνεται συμβολισμός προφίλ αυτή τη στιγμή
MenuButtons--metaInfo--cpu = CPU:
# This string is used when we have the information about both physical and
# logical CPU cores.
# Variable:
#   $physicalCPUs (Number), $logicalCPUs (Number) - Number of Physical and Logical CPU Cores
MenuButtons--metaInfo--physical-and-logical-cpu =
    { $physicalCPUs ->
        [one] { $physicalCPUs } φυσικός πυρήνας
       *[other] { $physicalCPUs } φυσικοί πυρήνες
    }, { $logicalCPUs ->
        [one] { $logicalCPUs } λογικός πυρήνας
       *[other] { $logicalCPUs } λογικοί πυρήνες
    }
# This string is used when we only have the information about the number of
# physical CPU cores.
# Variable:
#   $physicalCPUs (Number) - Number of Physical CPU Cores
MenuButtons--metaInfo--physical-cpu =
    { $physicalCPUs ->
        [one] { $physicalCPUs } φυσικός πυρήνας
       *[other] { $physicalCPUs } φυσικοί πυρήνες
    }
# This string is used when we only have the information only the number of
# logical CPU cores.
# Variable:
#   $logicalCPUs (Number) - Number of logical CPU Cores
MenuButtons--metaInfo--logical-cpu =
    { $logicalCPUs ->
        [one] { $logicalCPUs } λογικός πυρήνας
       *[other] { $logicalCPUs } λογικοί πυρήνες
    }
MenuButtons--metaInfo--main-process-started = Έναρξη κύριας διεργασίας:
MenuButtons--metaInfo--interval = Διάστημα:
MenuButtons--metaInfo--buffer-capacity = Χωρητικότητα buffer:
MenuButtons--metaInfo--buffer-duration = Διάρκεια buffer:
# Buffer Duration in Seconds in Meta Info Panel
# Variable:
#   $configurationDuration (Number) - Configuration Duration in Seconds
MenuButtons--metaInfo--buffer-duration-seconds =
    { $configurationDuration ->
        [one] { $configurationDuration } δευτερόλεπτο
       *[other] { $configurationDuration } δευτερόλεπτα
    }
# Adjective refers to the buffer duration
MenuButtons--metaInfo--buffer-duration-unlimited = Απεριόριστη
MenuButtons--metaInfo--application = Εφαρμογή
MenuButtons--metaInfo--name-and-version = Όνομα και έκδοση:
MenuButtons--metaInfo--update-channel = Κανάλι ενημερώσεων:
MenuButtons--metaInfo--build-id = ID δομής:
MenuButtons--metaInfo--build-type = Τύπος δομής:

## Strings refer to specific types of builds, and should be kept in English.

MenuButtons--metaInfo--build-type-debug = Debug
MenuButtons--metaInfo--build-type-opt = Opt

##

MenuButtons--metaInfo--platform = Πλατφόρμα
MenuButtons--metaInfo--device = Συσκευή:
# OS means Operating System. This describes the platform a profile was captured on.
MenuButtons--metaInfo--os = ΛΣ:
# ABI means Application Binary Interface. This describes the platform a profile was captured on.
MenuButtons--metaInfo--abi = ABI:
MenuButtons--metaInfo--visual-metrics = Οπτικές μετρήσεις
MenuButtons--metaInfo--speed-index = Δείκτης ταχύτητας:
# “Perceptual” is the name of an index provided by sitespeed.io, and should be kept in English.
MenuButtons--metaInfo--perceptual-speed-index = Δείκτης "Perceptual Speed":
# “Contentful” is the name of an index provided by sitespeed.io, and should be kept in English.
MenuButtons--metaInfo--contentful-speed-Index = Δείκτης "Contentful Speed":
MenuButtons--metaInfo-renderRowOfList-label-features = Λειτουργίες:
MenuButtons--metaInfo-renderRowOfList-label-threads-filter = Φίλτρο νημάτων:
MenuButtons--metaInfo-renderRowOfList-label-extensions = Επεκτάσεις:

## Overhead refers to the additional resources used to run the profiler.
## These strings are displayed at the bottom of the "Profile Info" panel.

MenuButtons--metaOverheadStatistics-subtitle = Πρόσθετοι πόροι (overhead) του { -profiler-brand-short-name }
MenuButtons--metaOverheadStatistics-mean = Μέσο
MenuButtons--metaOverheadStatistics-max = Μέγιστο
MenuButtons--metaOverheadStatistics-min = Ελάχιστο
MenuButtons--metaOverheadStatistics-statkeys-overhead = Πρόσθετοι πόροι
    .title = Χρόνος δειγματοληψίας όλων των νημάτων.
MenuButtons--metaOverheadStatistics-statkeys-cleaning = Εκκαθάριση
    .title = Χρόνος απόρριψης ληγμένων δεδομένων.
MenuButtons--metaOverheadStatistics-statkeys-counter = Μετρητής
    .title = Χρόνος συγκέντρωσης όλων των μετρητών.
MenuButtons--metaOverheadStatistics-statkeys-interval = Χρονικό διάστημα
    .title = Παρατηρηθέν χρονικό διάστημα μεταξύ δύο δειγμάτων.
MenuButtons--metaOverheadStatistics-statkeys-lockings = Κλειδώματα
    .title = Χρόνος για απόκτηση κλειδώματος πριν από τη δειγματοληψία.
MenuButtons--metaOverheadStatistics-overhead-duration = Διάρκειες επιβάρυνσης (overhead):
MenuButtons--metaOverheadStatistics-overhead-percentage = Ποσοστό πρόσθετων πόρων:
MenuButtons--metaOverheadStatistics-profiled-duration = Διάρκεια καταγραφής:

## Publish panel
## These strings are used in the publishing panel.

MenuButtons--publish--renderCheckbox-label-hidden-threads = Συμπερίληψη κρυφών νημάτων
MenuButtons--publish--renderCheckbox-label-include-other-tabs = Συμπερίληψη δεδομένων από άλλες καρτέλες
MenuButtons--publish--renderCheckbox-label-hidden-time = Συμπερίληψη κρυφού χρονικού διαστήματος
MenuButtons--publish--renderCheckbox-label-include-screenshots = Συμπερίληψη στιγμιότυπων οθόνης
MenuButtons--publish--renderCheckbox-label-resource = Συμπερίληψη URL και διαδρομών πόρων
MenuButtons--publish--renderCheckbox-label-extension = Συμπερίληψη πληροφοριών επέκτασης
MenuButtons--publish--renderCheckbox-label-preference = Συμπερίληψη τιμών προτιμήσεων
MenuButtons--publish--renderCheckbox-label-private-browsing = Συμπερίληψη δεδομένων από τα παράθυρα ιδιωτικής περιήγησης
MenuButtons--publish--renderCheckbox-label-private-browsing-warning-image =
    .title = Αυτό το προφίλ περιέχει δεδομένα ιδιωτικής περιήγησης
MenuButtons--publish--reupload-performance-profile = Νέα μεταφόρτωση προφίλ επιδόσεων
MenuButtons--publish--share-performance-profile = Κοινή χρήση προφίλ επιδόσεων
MenuButtons--publish--info-description = Ανεβάστε το προφίλ σας και κάντε το προσβάσιμο σε οποιονδήποτε έχει τον σύνδεσμο.
MenuButtons--publish--info-description-default = Από προεπιλογή, αφαιρούνται τα προσωπικά σας δεδομένα.
MenuButtons--publish--info-description-firefox-nightly2 = Αυτό το προφίλ είναι από το { -firefox-nightly-brand-name }, επομένως συμπεριλαμβάνονται οι περισσότερες πληροφορίες από προεπιλογή.
MenuButtons--publish--include-additional-data = Συμπερίληψη επιπλέον δεδομένων που ίσως να είναι αναγνωρίσιμα
MenuButtons--publish--button-upload = Μεταφόρτωση
MenuButtons--publish--upload-title = Μεταφόρτωση προφίλ…
MenuButtons--publish--cancel-upload = Ακύρωση μεταφόρτωσης
MenuButtons--publish--message-something-went-wrong = Ωχ όχι, κάτι πήγε στραβά κατά τη μεταφόρτωση του προφίλ.
MenuButtons--publish--message-try-again = Δοκιμή ξανά
MenuButtons--publish--download = Λήψη
MenuButtons--publish--compressing = Συμπίεση…

## NetworkSettings
## This is used in the network chart.

NetworkSettings--panel-search =
    .label = Φιλτράρισμα δικτύων:
    .title = Προβολή μόνο των αιτημάτων δικτύου που ταιριάζουν με συγκεκριμένο όνομα

## Timestamp formatting primitive

# This displays a date in a shorter rendering, depending on the proximity of the
# date from the current date. You can look in src/utils/l10n-ftl-functions.js
# for more information.
# This is especially used in the list of published profiles panel.
# There shouldn't need to change this in translations, but having it makes the
# date pass through Fluent to be properly localized.
# The function SHORTDATE is specific to the profiler. It changes the rendering
# depending on the proximity of the date from the current date.
# Variables:
#   $date (Date) - The date to display in a shorter way
NumberFormat--short-date = { SHORTDATE($date) }

## PanelSearch
## The component that is used for all the search input hints in the application.

PanelSearch--search-field-hint = Ξέρατε ότι μπορείτε να χρησιμοποιήσετε το κόμμα (,) για αναζήτηση με πολλαπλούς όρους;

## Profile Delete Button

# This string is used on the tooltip of the published profile links delete button in uploaded recordings page.
# Variables:
#   $smallProfileName (String) - Shortened name for the published Profile.
ProfileDeleteButton--delete-button =
    .label = Διαγραφή
    .title = Κάντε κλικ εδώ για να διαγράψετε το προφίλ { $smallProfileName }

## Profile Delete Panel
## This panel is displayed when the user clicks on the Profile Delete Button,
## it's a confirmation dialog.

# This string is used when there's an error while deleting a profile. The link
# will show the error message when hovering.
ProfileDeletePanel--delete-error = Προέκυψε σφάλμα κατά τη διαγραφή αυτού του προφίλ. <a>Περάστε τον δείκτη του ποντικιού για να μάθετε περισσότερα.</a>
# This is the title of the dialog
# Variables:
#   $profileName (string) - Some string that identifies the profile
ProfileDeletePanel--dialog-title = Διαγραφή «{ $profileName }»
ProfileDeletePanel--dialog-confirmation-question =
    Θέλετε σίγουρα να διαγράψετε τα μεταφορτωμένα δεδομένα για αυτό το προφίλ; Οι σύνδεσμοι
    που είχαν κοινοποιηθεί προηγουμένως, δεν θα λειτουργούν πλέον.
ProfileDeletePanel--dialog-cancel-button =
    .value = Ακύρωση
ProfileDeletePanel--dialog-delete-button =
    .value = Διαγραφή
# This is used inside the Delete button after the user has clicked it, as a cheap
# progress indicator.
ProfileDeletePanel--dialog-deleting-button =
    .value = Διαγραφή…
# This message is displayed when a profile has been successfully deleted.
ProfileDeletePanel--message-success = Τα μεταφορτωμένα δεδομένα διαγράφηκαν επιτυχώς.

## ProfileFilterNavigator
## This is used at the top of the profile analysis UI.

# This string is used on the top left side of the profile analysis UI as the
# "Full Range" button. In the profiler UI, it's possible to zoom in to a time
# range. This button reverts it back to the full range. It also includes the
# duration of the full range.
# Variables:
#   $fullRangeDuration (String) - The duration of the full profile data.
ProfileFilterNavigator--full-range-with-duration = Πλήρες εύρος ({ $fullRangeDuration })

## Profile Loader Animation

ProfileLoaderAnimation--loading-unpublished = Εισαγωγή προφίλ απευθείας από το { -firefox-brand-name }…
ProfileLoaderAnimation--loading-from-file = Ανάγνωση αρχείου και επεξεργασία προφίλ…
ProfileLoaderAnimation--loading-local = Δεν έχει υλοποιηθεί ακόμα.
ProfileLoaderAnimation--loading-public = Λήψη και επεξεργασία προφίλ…
ProfileLoaderAnimation--loading-from-url = Λήψη και επεξεργασία προφίλ…
ProfileLoaderAnimation--loading-compare = Ανάγνωση και επεξεργασία προφίλ…
ProfileLoaderAnimation--loading-view-not-found = Η προβολή δεν βρέθηκε

## ProfileRootMessage

ProfileRootMessage--title = { -profiler-brand-name }
ProfileRootMessage--additional = Πίσω στην αρχική

## ServiceWorkerManager
## This is the component responsible for handling the service worker installation
## and update. It appears at the top of the UI.

ServiceWorkerManager--installing-button = Εγκατάσταση…
ServiceWorkerManager--pending-button = Εφαρμογή και επαναφόρτωση
ServiceWorkerManager--installed-button = Επαναφόρτωση εφαρμογής
ServiceWorkerManager--updated-while-not-ready =
    Εφαρμόστηκε μια νέα έκδοση της εφαρμογής προτού φορτωθεί πλήρως
    αυτή η σελίδα. Ενδέχεται να δείτε δυσλειτουργίες.
ServiceWorkerManager--new-version-is-ready = Έγινε λήψη μιας νέας έκδοσης της εφαρμογής και είναι έτοιμη για χρήση.
ServiceWorkerManager--hide-notice-button =
    .title = Απόκρυψη σημείωσης επαναφόρτωσης
    .aria-label = Απόκρυψη σημείωσης επαναφόρτωσης

## StackSettings
## This is the settings component that is used in Call Tree, Flame Graph and Stack
## Chart panels. It's used to switch between different views of the stack.

StackSettings--implementation-all-stacks = Όλες οι στοίβες
StackSettings--implementation-javascript = JavaScript
StackSettings--implementation-native = Εγγενές
StackSettings--use-data-source-label = Πηγή δεδομένων:
StackSettings--call-tree-strategy-timing = Χρονισμοί
    .title = Περίληψη με δειγματοληπτικές στοίβες σταδιακά εκτελεσμένου κώδικα
StackSettings--call-tree-strategy-js-allocations = Κατανομές JavaScript
    .title = Περίληψη με bytes των κατανομών JavaScript (όχι ακυρώσεις κατανομών)
StackSettings--call-tree-strategy-native-retained-allocations = Κρατημένη μνήμη
    .title = Περίληψη με bytes μνήμης που κατανεμήθηκαν και δεν απελευθερώθηκαν ποτέ στην τρέχουσα επιλογή προεπισκόπησης
StackSettings--call-tree-native-allocations = Κατανεμημένη Μνήμη
    .title = Περίληψη με bytes κατανεμημένης μνήμης
StackSettings--call-tree-strategy-native-deallocations-memory = Αποδεσμευμένη μνήμη
    .title = Περίληψη με τα bytes της μνήμης που απελευθερώθηκαν, κατά τον ιστότοπο όπου είχε εκχωρηθεί η μνήμη
StackSettings--call-tree-strategy-native-deallocations-sites = Ιστότοποι αποδέσμευσης
    .title = Περίληψη με τα bytes της μνήμης που απελευθερώθηκαν, κατά τον ιστότοπο όπου αποδεσμεύθηκε η μνήμη
StackSettings--invert-call-stack = Αναστροφή στοίβας κλήσεων
    .title = Ταξινόμηση κατά χρόνο που χρησιμοποιήθηκε σε κόμβο κλήσεων, αγνοώντας τους θυγατρικούς του.
StackSettings--show-user-timing = Εμφάνιση χρονισμού χρήστη
StackSettings--panel-search =
    .label = Φιλτράρισμα στοιβών:
    .title = Εμφάνιση μόνο στοιβών που περιέχουν συνάρτηση της οποίας το όνομα αντιστοιχεί σε αυτή την υποσυμβολοσειρά

## Tab Bar for the bottom half of the analysis UI.

TabBar--calltree-tab = Δέντρο κλήσεων
TabBar--flame-graph-tab = Γράφημα φλόγας
TabBar--stack-chart-tab = Διάγραμμα στοιβών
TabBar--marker-chart-tab = Διάγραμμα δεικτών
TabBar--marker-table-tab = Πίνακας δεικτών
TabBar--network-tab = Δίκτυο
TabBar--js-tracer-tab = JS Tracer

## TrackContextMenu
## This is used as a context menu for timeline to organize the tracks in the
## analysis UI.

TrackContextMenu--only-show-this-process = Εμφάνιση μόνο αυτής της διεργασίας
# This is used as the context menu item to show only the given track.
# Variables:
#   $trackName (String) - Name of the selected track to isolate.
TrackContextMenu--only-show-track = Εμφάνιση μόνο του “{ $trackName }”
TrackContextMenu--hide-other-screenshots-tracks = Απόκρυψη άλλων κομματιών του Screenshots
# This is used as the context menu item to hide the given track.
# Variables:
#   $trackName (String) - Name of the selected track to hide.
TrackContextMenu--hide-track = Απόκρυψη του “{ $trackName }”
TrackContextMenu--show-all-tracks = Εμφάνιση όλων των κομματιών
# This is used in the tracks context menu as a button to show all the tracks
# that match the search filter.
TrackContextMenu--show-all-matching-tracks = Εμφάνιση όλων των αντίστοιχων κομματιών
# This is used in the tracks context menu as a button to hide all the tracks
# that match the search filter.
TrackContextMenu--hide-all-matching-tracks = Απόκρυψη όλων των αντίστοιχων κομματιών
# This is used in the tracks context menu when the search filter doesn't match
# any track.
# Variables:
#   $searchFilter (String) - The search filter string that user enters.
TrackContextMenu--no-results-found = Δεν βρέθηκαν αποτελέσματα για «<span>{ $searchFilter }</span>»

## TrackMemoryGraph
## This is used to show the memory graph of that process in the timeline part of
## the UI. To learn more about it, visit:
## https://profiler.firefox.com/docs/#/./memory-allocations?id=memory-track

TrackMemoryGraph--relative-memory-at-this-time = σχετική μνήμη αυτήν τη στιγμή
TrackMemoryGraph--memory-range-in-graph = εύρος μνήμης στο γράφημα
TrackMemoryGraph--operations-since-the-previous-sample = λειτουργίες από το προηγούμενο δείγμα

## TrackSearchField
## The component that is used for the search input in the track context menu.

TrackSearchField--search-input =
    .placeholder = Εισαγάγετε όρους φίλτρου
    .title = Προβολή μόνο των κομματιών που αντιστοιχούν σε συγκεκριμένο κείμενο

## TransformNavigator
## Navigator for the applied transforms in the Call Tree, Flame Graph, and Stack
## Chart components.
## These messages are displayed above the table / graph once the user selects to
## apply a specific transformation function to a node in the call tree. It's the
## name of the function, followed by the node's name.
## To learn more about them, visit:
## https://profiler.firefox.com/docs/#/./guide-filtering-call-trees?id=transforms

# Root item in the transform navigator.
# "Complete" is an adjective here, not a verb.
# See: https://profiler.firefox.com/docs/#/./guide-filtering-call-trees?id=collapse
# Variables:
#   $item (String) - Name of the current thread. E.g.: Web Content.
TransformNavigator--complete = Ολοκλήρωση “{ $item }”
# "Collapse resource" transform.
# See: https://profiler.firefox.com/docs/#/./guide-filtering-call-trees?id=collapse
# Variables:
#   $item (String) - Name of the resource that collapsed. E.g.: libxul.so.
TransformNavigator--collapse-resource = Σύμπτυξη: { $item }
# "Focus subtree" transform.
# See: https://profiler.firefox.com/docs/#/./guide-filtering-call-trees?id=focus
# Variables:
#   $item (String) - Name of the function that transform applied to.
TransformNavigator--focus-subtree = Εστίαση κόμβου: { $item }
# "Focus function" transform.
# See: https://profiler.firefox.com/docs/#/./guide-filtering-call-trees?id=focus
# Variables:
#   $item (String) - Name of the function that transform applied to.
TransformNavigator--focus-function = Εστίαση: { $item }
# "Merge call node" transform.
# See: https://profiler.firefox.com/docs/#/./guide-filtering-call-trees?id=merge
# Variables:
#   $item (String) - Name of the function that transform applied to.
TransformNavigator--merge-call-node = Συγχώνευση κόμβου: { $item }
# "Merge function" transform.
# See: https://profiler.firefox.com/docs/#/./guide-filtering-call-trees?id=merge
# Variables:
#   $item (String) - Name of the function that transform applied to.
TransformNavigator--merge-function = Συγχώνευση: { $item }
# "Drop function" transform.
# See: https://profiler.firefox.com/docs/#/./guide-filtering-call-trees?id=drop
# Variables:
#   $item (String) - Name of the function that transform applied to.
TransformNavigator--drop-function = Απόρριψη: { $item }
# "Collapse direct recursion" transform.
# See: https://profiler.firefox.com/docs/#/./guide-filtering-call-trees?id=collapse
# Variables:
#   $item (String) - Name of the function that transform applied to.
TransformNavigator--collapse-direct-recursion = Σύμπτυξη αναδρομής: { $item }
# "Collapse function subtree" transform.
# See: https://profiler.firefox.com/docs/#/./guide-filtering-call-trees?id=collapse
# Variables:
#   $item (String) - Name of the function that transform applied to.
TransformNavigator--collapse-function-subtree = Σύμπτυξη υπόδεντρου: { $item }

## Source code view in a box at the bottom of the UI.

# Displayed while the source view is waiting for the network request which
# delivers the source code.
# Variables:
#   $host (String) - The "host" part of the URL, e.g. hg.mozilla.org
SourceView--loading-url = Αναμονή για { $host }…
# Displayed while the source view is waiting for the browser to deliver
# the source code.
SourceView--loading-browser-connection = Αναμονή για { -firefox-brand-name }…
# Displayed whenever the source view was not able to get the source code for
# a file.
SourceView--source-not-available-title = Μη διαθέσιμη πηγή
# Displayed whenever the source view was not able to get the source code for
# a file.
# Elements:
#   <a>link text</a> - A link to the github issue about supported scenarios.
SourceView--source-not-available-text = Δείτε το <a>ζήτημα #3741</a> για υποστηριζόμενα σενάρια και προγραμματισμένες βελτιώσεις.
# Displayed below SourceView--cannot-obtain-source, if the profiler does not
# know which URL to request source code from.
SourceView--no-known-cors-url = Δεν υπάρχει γνωστό URL με δυνατότητα πρόσβασης από πολλαπλές προελεύσεις για αυτό το αρχείο.
# Displayed below SourceView--cannot-obtain-source, if there was a network error
# when fetching the source code for a file.
# Variables:
#   $url (String) - The URL which we tried to get the source code from
#   $networkErrorMessage (String) - The raw internal error message that was encountered by the network request, not localized
SourceView--network-error-when-obtaining-source = Προέκυψε σφάλμα δικτύου κατά τη λήψη του URL { $url }: { $networkErrorMessage }
# Displayed below SourceView--cannot-obtain-source, if the browser could not
# be queried for source code using the symbolication API.
# Variables:
#   $browserConnectionErrorMessage (String) - The raw internal error message, not localized
SourceView--browser-connection-error-when-obtaining-source = Δεν ήταν δυνατή η διερεύνηση του API συμβολισμού του προγράμματος περιήγησης: { $browserConnectionErrorMessage }
# Displayed below SourceView--cannot-obtain-source, if the browser was queried
# for source code using the symbolication API, and this query returned an error.
# Variables:
#   $apiErrorMessage (String) - The raw internal error message from the API, not localized
SourceView--browser-api-error-when-obtaining-source = Το API συμβολισμού του προγράμματος περιήγησης επέστρεψε σφάλμα: { $apiErrorMessage }
# Displayed below SourceView--cannot-obtain-source, if a symbol server which is
# running locally was queried for source code using the symbolication API, and
# this query returned an error.
# Variables:
#   $apiErrorMessage (String) - The raw internal error message from the API, not localized
SourceView--local-symbol-server-api-error-when-obtaining-source = Το API συμβολισμού του διακομιστή τοπικών συμβόλων επέστρεψε σφάλμα: { $apiErrorMessage }
# Displayed below SourceView--cannot-obtain-source, if a file could not be found in
# an archive file (.tar.gz) which was downloaded from crates.io.
# Variables:
#   $url (String) - The URL from which the "archive" file was downloaded.
#   $pathInArchive (String) - The raw path of the member file which was not found in the archive.
SourceView--not-in-archive-error-when-obtaining-source = Το αρχείο «{ $pathInArchive }» δεν βρέθηκε στο αρχείο από το { $url }.
# Displayed below SourceView--cannot-obtain-source, if the file format of an
# "archive" file was not recognized. The only supported archive formats at the
# moment are .tar and .tar.gz, because that's what crates.io uses for .crates files.
# Variables:
#   $url (String) - The URL from which the "archive" file was downloaded.
#   $parsingErrorMessage (String) - The raw internal error message during parsing, not localized
SourceView--archive-parsing-error-when-obtaining-source = Δεν ήταν δυνατή η ανάλυση του αρχείου στο { $url }: { $parsingErrorMessage }
SourceView--close-button =
    .title = Κλείσιμο προβολής πηγής

## UploadedRecordingsHome
## This is the page that displays all the profiles that user has uploaded.
## See: https://profiler.firefox.com/uploaded-recordings/

UploadedRecordingsHome--title = Μεταφορτωμένες καταγραφές
