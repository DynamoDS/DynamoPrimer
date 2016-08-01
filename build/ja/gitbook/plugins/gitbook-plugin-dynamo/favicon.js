require(["gitbook", "lodash"], function(gitbook, _) {
  gitbook.events.bind("start", function(e, config) {
    var opts = config.dynamo;

    if(config.dynamo.favicon) {
      document.head || (document.head = document.getElementsByTagName('head')[0]);

      var changeFavIcon = function(src) {
        var link = document.createElement('link'),
          oldLink = document.getElementById('dynamic-favicon');

          link.id = 'dynamic-favicon';
          link.rel = 'shortcut icon';
          link.href = src;

          if (oldLink) {
            document.head.removeChild(oldLink);
          }
    
          document.head.appendChild(link);
      };

      changeFavIcon(config.dynamo.favicon);
    }

  });
});
