<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="generator" content="pandoc">
  <title></title>
  <meta name="apple-mobile-web-app-capable" content="yes" />
  <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <link rel="stylesheet" href="reveal.js/css/reveal.min.css"/>
    <style type="text/css">code{white-space: pre;}</style>
    <link rel="stylesheet" href="reveal.js/css/theme/simple.css" id="theme">
  <link rel="stylesheet" media="print" href="reveal.js/css/print/pdf.css" />
  <!--[if lt IE 9]>
  <script src="reveal.js/lib/js/html5shiv.js"></script>
  <![endif]-->
</head>
<body>
  <div class="reveal">
    <div class="slides">
    $body$

    </div>
  </div>

  <script src="reveal.js/lib/js/head.min.js"></script>
  <script src="reveal.js/js/reveal.min.js"></script>

  <script>

      // Full list of configuration options available here:
      // https://github.com/hakimel/reveal.js#configuration
      Reveal.initialize({
        controls: $controls$,
        progress: true,
        history: true,
        center: true,
        theme: Reveal.getQueryHash().theme, // available themes are in /css/theme
        transition: Reveal.getQueryHash().transition || 'linear', // default/cube/page/concave/zoom/linear/fade/none

        // Optional libraries used to extend on reveal.js
        dependencies: [
          { src: 'reveal.js/lib/js/classList.js', condition: function() { return !document.body.classList; } },
          { src: 'reveal.js/plugin/zoom-js/zoom.js', async: true, condition: function() { return !!document.body.classList; } },
          { src: 'reveal.js/plugin/notes/notes.js', async: true, condition: function() { return !!document.body.classList; } },
//          { src: 'reveal.js/plugin/search/search.js', async: true, condition: function() { return !!document.body.classList; }, }
//          { src: 'reveal.js/plugin/remotes/remotes.js', async: true, condition: function() { return !!document.body.classList; } }
]});
    </script>
  </body>
</html>
