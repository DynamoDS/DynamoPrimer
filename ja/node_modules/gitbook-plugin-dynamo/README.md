# plugin-sharing

This plugin:
- adds sharing buttons in the GitBook website toolbar to share book on social networks
- adds a language switch drop-down

### Disable the sharing plugin

The sharing plugin is a default plugin of gitbook and comes with the gitbook installation. It can be disabled using a `book.json` configuration:

```
{
    plugins: ["-sharing"]
}
```

### Configure the Dynamo plug-in for social media

To enable social network links as individual icons in the git toolbar, use this example `book.json` configuration:


```js
{
    "pluginsConfig": {
        "sharing": {
            "facebook": true,
            "twitter": true,
            "google": false,
            "weibo": false,
            "instapaper": false,
            "vk": false,
            "all": [
                "facebook", "google", "twitter",
                "weibo", "instapaper"
            ]
        }
    }
}
```

### Add custom links

To add a simple html link in the git toolbar, use this example `book.json` configuration:


```js
"dynamo": {
      "customLinks":[
        {
          "label": "Download",
          "icon": "fa fa-file-pdf-o fa-lg",
          "url": "Appendix/DynamoPrimer-Print.pdf"
        }]
```

- Label: does not show in the UI
- Icon: from the font Awesome http://fontawesome.io/
- url: used in the http a @href attribute. Can be relative or absolute


### Add language switch drop-down

Add as many language object as the current book has localized versions. Each language object will create an entry in the drop down with a link to the corresponding localized version. No need to link to self.

- The language label is used in the drop down
- The url is used to build the http a @href attribute

The gitbook dropdown has an auto-layout:
- from 1 to 3 elements, it places elements horizontally.
- with 4 or more elements, it places them vertically
- to obtain a vertical layout with less than 4 elements, add empty language elements, up to four. This work-around is at the expense of some padding space at the bottom of the drop-down.

The currentLanguage element is optional. When present, it adds functionality:
- the presence of currentLanguage.url links page-to-page, instead of page-to-home
- to keep the page-to-home linking behavior, simply drop teh url property or leave it blank
- the presence of currentLanguage.switchLangLabel adds a text label in the gitbook toolbar, next to the switch language icon. The label makes the language switch more visible. This label should be localized.

Example:
- English: "switchLangLabel":"Languages"
- German: "switchLangLabel":"Sprachen"
- Japanese: "switchLangLabel":"言語"


Example configuration for German:

```js
"dynamo": {
      "languages":[
         {
		"label": "English",
		"code":"en",
	    "url": "http://dynamoprimer.com"
         },
         {
		"label": "日本語",
		"code": "ja",
	    "url": "http://dynamoprimer.com/ja"
         },
        {
          "label": "",
          "code":"",
          "url": ""
        },
        {
          "label": "",
          "code":"",
          "url": ""
        }
      ],
      "currentLanguage":{
         "code":"de",
         "url":"http://dynamoprimer.com/de",
         "switchLangLabel":"Sprachen"
      }
```

