

    <div id="main">
      <div id="intro" class="col-md-12">

        <header>
          <div class="content text-center wow fadeIn" style="visibility: visible; animation-name: fadeIn;">

            <a href="#/index.html">
              <img class="brand wow zoomIn" alt="Paul Laros" height="160" width="160" src="/static/img/avatar.jpg" style="visibility: visible; animation-name: zoomIn;">
            </a>

            <h1>Feel Land</h1>
            <p>追求极致才能让你在所从事的行业显出价值</p>
            <p>
              <a href="#/#open" class="toggle-fullscreen btn btn-default btn-outline btn-lg wow tada hidden-xs hidden-sm pulse" style="visibility: visible; animation-name: tada;">Blog</a> 
              <a href="/about.html" class="btn btn-outline btn-default btn-lg">About</a>
              <a href="/contact.html" class="btn btn-outline btn-default btn-lg">Contact</a>
            </p>
          </div>
        </header>

      </div><!-- /#intro -->

      <div id="content" class="col-md-8 col-md-offset-4">
          <div role="tabpanel">

            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
              <li class="active"><a href="#/#posts" aria-controls="posts" role="tab" data-toggle="tab">TECHOLOGY</a></li>
           
       
              <li><a href="#/#collections" aria-controls="collections" role="tab" data-toggle="tab">Collections</a></li>
              <li ><a href="#/#posts" aria-controls="posts" role="tab" data-toggle="tab">THINK</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
              <div role="tabpanel" class="tab-pane active wow animated" id="posts" style="visibility: visible;">
                {{range .model}}
                <section class="post featured wow fadeIn" style="visibility: visible; animation-name: fadeIn;">
                  <header>
                    <h2 class="title">
                      <a href="/article/{{.Id}}.html">{{.Title}}</a>
                    </h2>
                    
                  </header>
                  <div class="description">
                    <p>
                    {{ .Description}}
                    </p>
                  </div>
                  <footer>
                    <p class="meta">
                      <a class="auther" href="#/author.html">{{.Author}}</a> in <a class="collection" href="#/collection.html">TECHOLOGY</a> ● <a class="date" href="#/date.html">{{.Createtime}}</a>
                    </p>
                  </footer>
                </section>
              
                {{end}}

             
              </div>
              <div role="tabpanel" class="tab-pane wow animated" id="collections" style="visibility: visible;">
                
                <section class="collections">
                  <div class="row">
                    <div class="collection col-sm-4 col-xs-6">
                      <a class="content text-center" href="#/collection.html">
                        <img src="/static/img/culture.jpg" class="img-responsive">
                        <div class="caption">
                          <h3>Culture</h3>
                          <span class="btn btn-lg btn-outline btn-default">4 posts</span>
                        </div>
                      </a>
                    </div>

                    <div class="collection col-sm-4 col-xs-6">
                      <a class="content text-center" href="#/collection.html">
                        <img src="/static/img/geek.jpg" class="img-responsive">
                        <div class="caption">
                        <h3>Geek</h3>
                        <span class="btn btn-lg btn-outline btn-default">3 posts</span>
                        </div>
                      </a>
                    </div>


                    <div class="collection col-sm-4 col-xs-6">
                      <a class="content text-center" href="#/collection.html">
                        <img src="/static/img/life.jpg" class="img-responsive">
                        <div class="caption">
                        <h3>Life</h3>
                        <span class="btn btn-lg btn-outline btn-default">12 posts</span>
                        </div>
                      </a>
                    </div>

                    <div class="collection col-sm-4 col-xs-6">
                      <a class="content text-center" href="#/collection.html">
                        <img src="/static/img/music.jpg" class="img-responsive">
                        <div class="caption">
                        <h3>Music</h3>
                        <span class="btn btn-lg btn-outline btn-default">5 posts</span>
                        </div>
                      </a>
                    </div>

                    <div class="collection col-sm-4 col-xs-6">
                      <a class="content text-center" href="#/collection.html">
                        <img src="/static/img/photography.jpg" class="img-responsive">
                        <div class="caption">
                        <h3>Photography</h3>
                        <span class="btn btn-lg btn-outline btn-default">0 posts</span>
                        </div>
                      </a>
                    </div>

                    <div class="collection col-sm-4 col-xs-6">
                      <a class="content text-center" href="#/collection.html">
                        <img src="/static/img/politics.jpg" class="img-responsive">
                        <div class="caption">
                        <h3>Politics</h3>
                        <span class="btn btn-lg btn-outline btn-default">8 posts</span>
                        </div>
                      </a>
                    </div>


                    <div class="collection col-sm-4 col-xs-6">
                      <a class="content text-center" href="#/collection.html">
                        <img src="/static/img/sports.jpg" class="img-responsive">
                        <div class="caption">
                        <h3>Sports</h3>
                        <span class="btn btn-lg btn-outline btn-default">1 posts</span>
                        </div>
                      </a>
                    </div>

                    <div class="collection col-sm-4 col-xs-6">
                      <a class="content text-center" href="#/collection.html">
                        <img src="/static/img/travel.jpg" class="img-responsive">
                        <div class="caption">
                        <h3>Travel</h3>
                        <span class="btn btn-lg btn-outline btn-default">6 posts</span>
                        </div>
                      </a>
                    </div>

                    <div class="collection col-sm-4 col-xs-6">
                      <a class="content text-center" href="#/collection.html">
                        <img src="/static/img/work.jpg" class="img-responsive">
                        <div class="caption">
                        <h3>Work</h3>
                        <span class="btn btn-lg btn-outline btn-default">2 posts</span>
                        </div>
                      </a>
                    </div>


                  </div>
                </section>

              </div>
            </div><!-- /.tab-content -->
          </div><!-- /tabpanel -->

          <footer class="footer">
            <p class="text-muted">© Feel.Land 2018. All rights reserved</p>
          </footer>

      </div><!-- /#content -->
    </div><!-- /#main -->
