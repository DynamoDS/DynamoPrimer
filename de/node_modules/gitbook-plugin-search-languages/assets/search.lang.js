require([
    "gitbook",
    "lodash",
    "jquery"
], function (gitbook, _, $) {
    var index = null;
    
    // Use a specific index
    function loadIndex(data) {
        index = lunr.Index.load(data);
    }

    // Fetch the search index
    function fetchIndex() {
        $.getJSON(gitbook.state.basePath + "/search_index.lang.json")
            .then(loadIndex);
    }

    // Search for a term and return results
    function search(q) {
        if (!index) return;

        var results = _.chain(index.search(q))
            .map(function (result) {
                var parts = result.ref.split("#")
                return {
                    path: parts[0],
                    hash: parts[1]
                }
            })
            .value();

        return results;
    }

    // Return true if search is open
    function isSearchOpen() {
        return gitbook.state.$book.hasClass("with-search");
    }

    // Toggle the search
    function toggleSearch(_state) {
        var $searchInput = $('input[type=text].form-control');
        if (isSearchOpen() === _state) return;

        gitbook.state.$book.toggleClass("with-search", _state);

        // If search bar is open: focus input
        if (isSearchOpen()) {
            gitbook.sidebar.toggle(true);
            $searchInput.focus();
        } else {
            $searchInput.blur();
            $searchInput.val("");
            gitbook.sidebar.filter(null);
        }
    }

    fetchIndex();
 
    // disable default search key event handler
    $(document).off("keyup", ".book-search input");

    $(document).on("keyup", ".book-search input", function (e) {
        var key = (e.keyCode ? e.keyCode : e.which);
        var q = $(this).val();
        if (key == 27) {
            e.preventDefault();
            toggleSearch(false);
            return;
        }
        if (q.length == 0) {
            gitbook.sidebar.filter(null);
            gitbook.storage.remove("keyword");
        } else {
            var results = search(q);
            gitbook.sidebar.filter(
                _.pluck(results, "path")
                );
            gitbook.storage.set("keyword", q);
        }
    });
});
