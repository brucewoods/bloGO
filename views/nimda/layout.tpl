<!DOCTYPE html>
<!-- saved from url=(0041)https://paullaros.bitbucket.io/anthem1.1/ -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Feel.Land {{.tt}}</title>
    <meta name="keywords" content="{{.qw}}">
    <meta name="description" content="{{.ds}}">
    <meta name="author" content="Feel Land">
    <link rel="shortcut icon" href="">
    <link href="/static/css/css.spring.css" rel="stylesheet">
   <!-- Bootstrap core CSS -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/css/font-awesome.min.css" rel="stylesheet">
    <link href="/static/css/animate.css" rel="stylesheet">

    <!-- Styles -->
    <link href="/static/css/fl.css" rel="stylesheet">
    <link href="/static/css/flt.css" rel="stylesheet">     
 

   

    <!-- Loading bar -->
    <script src="/static/js/pace.min.js"></script>

    <!-- HTML5 shiv for IE8 support -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <![endif]-->
  </head>

  <body class="spring  pace-done hasGoogleVoiceExt"><div class="pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
  <div class="pace-progress-inner"></div>
</div>
<div class="pace-activity"></div></div>

{{.LayoutContent}}

    <!-- Scripts -->
    <script src="/static/js/jquery-1.11.2.min.js"></script>
    <script src="/static/js/bootstrap.min.js"></script>
    <script src="/static/js/wow.min.js"></script>
    <script src="/static/js/parallax.js"></script>
    <script src="/static/js/smoothScroll.js"></script>
    <script src="/static/js/main.js"></script>

  

    <script>
      new WOW().init();

    </script>
        {{ block "js" . }}{{ end }}
  
</body></html>