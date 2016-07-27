var lunr = require('lunr');
var fs = require('fs');
var path = require('path');
var _ = require('lodash');
var $ = require('cheerio');

var supportLangs = ['da', 'de', 'du', 'es', 'fi', 'fr', 'hu', 'it', 'jp', 'no', 'pt', 'ro', 'ru', 'sv', 'tr'];

module.exports = {
    book: {
        assets: './assets',
        html: {
            "body:end": function(page) {
                if (this.book.options.generator != 'website') return;
                if (this.book.context.searchLanguages.isSkip) return;
                var lang = this.book.context.searchLanguages.lang;
                var bodyEnd = [
                    '<script src="'+ page.staticBase + '/plugins/gitbook-plugin-search-languages/lunr.stemmer.support.js"></script>',
                    '<script src="'+ page.staticBase + '/plugins/gitbook-plugin-search-languages/lunr.' + lang + '.js"></script>',
                    '<script src="'+ page.staticBase + '/plugins/gitbook-plugin-search-languages/search.lang.js"></script>'
                ].join('\n');
                return bodyEnd;
            }
        }
    },

    hooks: {
        "init": function() {
            var lang;
            var isSkip;
            if (this.options.generator != 'website') return;
            this.context.searchLanguages = {};
            this.context.searchLanguages.lang = lang = this.config.options.pluginsConfig.search_languages.lang;
            this.context.searchLanguages.isSkip 
                = isSkip = (!lang || lang === 'en' || !_.any(supportLangs, function(lng) { return lng === lang }));  
            if (isSkip) {
                this.log.warn.ln('[search-languages] not support language : ' + lang);
                return;
            }

            require('lunr-languages/lunr.stemmer.support')(lunr);
            require('lunr-languages/lunr.' + lang)(lunr);
            // Create search index
            this.context.searchIndex = lunr(function () {
                this.ref('url');
                this.use(lunr[lang]);
                this.field('title', { boost: 10 });
                this.field('body');
            });
        },
        // Index each page
        "page": function(page) {
            if (this.options.generator != 'website') return page;
            if (this.context.searchLanguages.isSkip) return page;

            var lang = this.context.searchLanguages.lang;
            // if (_.any(supportLangs, function(lng) { return lng === lang })) {
            // Extract HTML
            var html = _.pluck(page.sections, 'content').join(' ');
    
            // Transform as TEXT
            var text = $('<p>' + html.replace(/(<([^>]+)>)/ig, '') + '</p>').text();
            
            // Add to index
            this.context.searchIndex.add({
                url: this.contentLink(page.path),
                title: $('<p>' + page.progress.current.title + '</p>').text(),
                body: text
            })
            // }

            return page;
        },

        // Write index to disk
        "finish": function() {
            if (this.options.generator != 'website') return;
            if (this.context.searchLanguages.isSkip) return;
            fs.writeFileSync(
                path.join(this.options.output, "search_index.lang.json"),
                JSON.stringify(this.context.searchIndex)
            );
        }
    }
};

