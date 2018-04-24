
    <div id="main">
      <a class="page-brand" href="/#open">
        <img class="brand wow zoomIn" alt="Paul Laros" height="80" width="80" src="/static/img/avatar.jpg" style="visibility: visible; animation-name: zoomIn;">
      </a>

      <header class="parallax-window" data-parallax="scroll" data-image-src="/static/img/wall.jpg" data-speed="0.8"></header>
    
      <div id="content" class="container">
        <div class="row">
          <div class="col-md-10 col-md-offset-1">
            <section class="post single wow fadeIn" style="visibility: visible; animation-name: fadeIn;">
              <header>
                <h1 class="title">
                 {{.model.Title}}
                </h1>
                <p class="meta">
                  <a class="auther" href="#author.html">{{.model.Author}}</a> in <a class="collection" href="#collection.html">TECHONOLOGY</a> ● <a class="date" href="#date.html">{{.model.Createtime}}</a>
                </p>
              </header>
              <div class="description">
               {{str2html .model.Content}}
             
               <script> 
               function loadsource() {
    var script = document.createElement("script");
    var link = document.createElement("link");
    script.src = "/static/js/prism.js";
    script.type = "text/javascript";
    link.href="/static/css/prism.css";
    link.rel="stylesheet"
    document.getElementsByTagName("head")[0].appendChild(script);
    document.getElementsByTagName("head")[0].appendChild(link);
}
  loadsource();
           
               </script>
             
               <pre><code class="language-css">p { color: red }</code></pre>
               <pre data-line="2"><code class="language-go">
                  package controllers

                  import (
                    m "badassblog/models"
                    "fmt"
                    "strconv"
                  
                    "github.com/astaxie/beego"
                    "github.com/astaxie/beego/orm"
                  )
                  
                  type ArticleController struct {
                    beego.Controller
                  }
                  
                  func (this *ArticleController) Get() {
                  
                    o := orm.NewOrm()
                    id, _ := strconv.Atoi(this.Ctx.Input.Param(":id"))
                    article := m.Article{Id: id}
                    err := o.Read(&article)
                    if err == orm.ErrNoRows {
                      fmt.Println("查询不到")
                    } else if err == orm.ErrMissPK {
                      fmt.Println("找不到主键")
                    } else {
                      this.Data["model"] = article
                    }
                    this.Data["test"] = err
                    this.Data["id"] = id
                    this.Data["title"] = article.Title
                    this.Layout = "nimda/layout.tpl"
                  
                  }
                  
               </code></pre>
              </div>
            </section>

            <div id="disqus_thread"></div>
            <script>

                /**
                *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
                *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
                /*
                var disqus_config = function () {
                this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
                this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
                };
                */
                (function() { // DON'T EDIT BELOW THIS LINE
                var d = document, s = d.createElement('script');
                s.src = 'https://feel-land.disqus.com/embed.js';
                s.setAttribute('data-timestamp', +new Date());
                (d.head || d.body).appendChild(s);
                })();
                </script>
                <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
                                            
            <footer class="footer">
              <p class="text-muted">© Feel.Land 2018. All rights reserved</p>
            </footer>

          </div><!-- /.col-md-10 .col-md-offset-1 -->
        </div><!-- /.row -->

      </div><!-- /#content -->
    </div><!-- /#main -->

