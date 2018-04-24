<!DOCTYPE html>
<!-- saved from url=(0041)https://paullaros.bitbucket.io/anthem1.1/ -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Paul Laros">
    <link rel="shortcut icon" href="https://paullaros.bitbucket.io/anthem1.1/favicon.ico">

    <title>Feel.Land</title>

    <!-- Fonts -->
    <link href="/static/css/css.fonts.css" rel="stylesheet">
    <!-- - Spring -->
 

    <!-- Bootstrap core CSS -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/css/font-awesome.min.css" rel="stylesheet">
    <link href="/static/css/animate.css" rel="stylesheet">

    <!-- Styles -->
    <link href="/static/css/fl.css" rel="stylesheet">
    <link href="/static/css/flt.css" rel="stylesheet">     
 
        <script src="/static/js/jquery-1.11.2.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.css">
    <script src="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script> 
    <script src="https://cdn.jsdelivr.net/highlight.js/latest/highlight.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/highlight.js/latest/styles/github.min.css">
</head>
<body>
          <input type="hidden" name="Id" value="{{.model.Id}}" />
          <input type="hidden" name="Createtime" value="{{.model.Createtime}}"  />
          <input type="hidden" name="Lasttime" value="{{.model.Lasttime}}"  />
          <input type="hidden" name="Author" value="{{.model.Author}}"  />
        <textarea id="demo1"  ></textarea>
        <script>
                var sim=new SimpleMDE({
                 element: document.getElementById("demo1"),
                 spellChecker: false,
                 renderingConfig: {
		singleLineBreaks: false,
		codeSyntaxHighlighting: true,
	},
                 autosave: {
			enabled: true,
			unique_id: "demo1",
		}
             });
             sim.value('{{.model.Title}} \r\n$$\r\n{{.model.Keywords}}\r\n$$\r\n{{.model.Description}}\r\n$$\r\n{{.model.Content}}');
             $(function(){
                $('[title*=F11]').click()
                $('[title*=F9]').click()
                $(document).on("keydown", "body", function(e)
    {
        if ((e.keyCode == 10 || e.keyCode == 13) && e.ctrlKey)
        {
           $('#commit').click();
        }
    });
                 $('#commit').click(function(){
                     var d=$('[name=Id]').val();
                     var c=$('[name=Createtime]').val();
                     var t=$('[name=Lasttime]').val();
                     var a=$('[name=Author]').val();
                

                     $.post('/backdoor',{content:sim.value(),d:d,c:c,t:t,a:a},function(rep){
                         if(rep=="ok")
                         {
                             alert("saved sucess!")
                         }
                     })
                 })
             })
               
                 </script>
                 <div style="margin:0 auto;text-align: center;display: none"><button id="commit" class="button">Commit</button></div>
</body>

</html>