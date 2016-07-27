require(["gitbook", "lodash"], function(gitbook, _) {
    var SITES = {
        'facebook': {
            'label': 'Facebook',
            'icon': 'fa fa-facebook fa-lg',
            'onClick': function(e) {
                e.preventDefault();
                window.open("http://www.facebook.com/sharer/sharer.php?s=100&p[url]="+encodeURIComponent(location.href));
            }
        },
        'twitter': {
            'label': 'Twitter',
            'icon': 'fa fa-twitter fa-lg',
            'onClick': function(e) {
                e.preventDefault();
                window.open("http://twitter.com/home?status="+encodeURIComponent(document.title+" "+location.href));
            }
        },
        'google': {
            'label': 'Google+',
            'icon': 'fa fa-google-plus',
            'onClick': function(e) {
                e.preventDefault();
                window.open("https://plus.google.com/share?url="+encodeURIComponent(location.href));
            }
        },
        'weibo': {
            'label': 'Weibo',
            'icon': 'fa fa-weibo',
            'onClick': function(e) {
                e.preventDefault();
                window.open("http://service.weibo.com/share/share.php?content=utf-8&url="+encodeURIComponent(location.href)+"&title="+encodeURIComponent(document.title));
            }
        },
        'instapaper': {
            'label': 'Instapaper',
            'icon': 'fa fa-instapaper',
            'onClick': function(e) {
                e.preventDefault();
                window.open("http://www.instapaper.com/text?u="+encodeURIComponent(location.href));
            }
        },
        'vk': {
            'label': 'VK',
            'icon': 'fa fa-vk',
            'onClick': function(e) {
                e.preventDefault();
                window.open("http://vkontakte.ru/share.php?url="+encodeURIComponent(location.href));
            }
        }
    };


    gitbook.events.bind("start", function(e, config) {
        var opts = config.dynamo;

        // Create dropdown menu
        var menu = _.chain(opts.all)
            .map(function(id) {
                var site = SITES[id];

                return {
                    text: site.label,
                    onClick: site.onClick
                };
            })
            .compact()
            .value();

        // Create main button with dropdown
        if (menu.length > 0) {
            gitbook.toolbar.createButton({
                icon: 'fa fa-share-alt fa-lg',
                label: 'Share',
                position: 'right',
                dropdown: [menu]
            });
        }

        // Direct actions to share
        _.each(SITES, function(site, sideId) {
            if (!opts[sideId]) return;

            gitbook.toolbar.createButton({
                icon: site.icon,
                label: site.text,
                position: 'right',
                onClick: site.onClick
            });
        });

        // Draw custom links
        _.each(opts.customLinks, function(item) {
            gitbook.toolbar.createButton({
                icon: item.icon,
                label: '',
                text: item.text,
                position: 'right',
                onClick: function(e) {
                    e.preventDefault();
                    window.open(item.url);
                }
            });
        });
        
        var currentLangUrl = '';
        if (typeof opts.currentLanguage == 'object' && typeof opts.currentLanguage.url == 'string') {
            currentLangUrl = opts.currentLanguage.url;
        }

        var languageMenu = _.chain(opts.languages)
            .map(function(lang) {
                var onClickFunction;
                var currentUrlRegexp = new RegExp( location.href.replace('/','\/').replace('.','\.') );
                if ( currentUrlRegexp.exec(currentLangUrl) ) {
                   onClickFunction = function(e) {
                       e.preventDefault();
                       var pageUri = location.href.substring(currentLangUrl.length,location.href.length);
                       // with base url of current gitbook provided, directing to same page in the target language
                       window.open(lang.url+pageUri)
                   };
                } else {
                   onClickFunction = function(e) {
                      e.preventDefault();
                      // when no current base url provided, directing to target home page
                      window.open(lang.url)
                   };
                }
                return {
                    text: lang.label,
                    onClick: onClickFunction,
                    url: lang.url
                };
            })
            .compact()
            .value();

        // findout current base url
        var switchLangLabel = '';
        if (typeof opts.currentLanguage == 'object' && typeof opts.currentLanguage.switchLangLabel == 'string') {
            switchLangLabel = opts.currentLanguage.switchLangLabel;
        }

        // Create language switch button with dropdown
         if (languageMenu.length > 0) {
            var switchLang = '';
            gitbook.toolbar.createButton({
                icon: 'fa fa-language fa-lg',
                label: 'lang',
                text: switchLangLabel,
                position: 'right',
                dropdown: [languageMenu]
            });
         }

    });
});
