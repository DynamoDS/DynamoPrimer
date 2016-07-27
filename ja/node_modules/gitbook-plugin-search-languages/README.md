# Gitbook Search Launguages

**NOTE: this plugin is WIP**

this plugin will replace keyword search in gitbook to your language.

## description

lunr.js is used for a key word search in gitbook.   
but tokenizer and stemmer of lunr.js is default setting.   
That means that it's only English setting.   
this plugin will replace keyword search in gitbook to your language.   
This plug-in uses [lunr-languages](https://github.com/MihaiValentin/lunr-languages) in tokenizer and stemmer.

lunr-languages is supporting following languages.

| language | code |
| --- | --- |
| German | de |
| French | fr |
| Spanish | es |
| Italian | it |
| Japanese | jp |
| Dutch | du |
| Danish | da |
| Portuguese | pt |
| Finnish | fi |
| Romanian | ro |
| Hungarian | hu |
| Russian | ru |
| Norwegian | no |
| Turkish | tr |
| Swedish | sv |

this plugin strongly depend on lunr-languages.

## How to use it?

Add it to your `book.json` configuration:

```json
{
	...
    "plugins": ["search-languages"],
	...
    "pluginsConfig": {
        "search_languages": {
            "lang": "jp"
        }
    }
}
```

Install your plugins using:

```bash
$ gitbook install
```

## change logs

* version 0.0.1 (2015-11-17)
