package routers

import (
	"github.com/astaxie/beego"
	"github.com/brucewoods/bloGO/controllers"
)

func init() {
	beego.Router("/", &controllers.MainController{})

	beego.Router("/page/:p", &controllers.MainController{})
	beego.Router("/article/:id.html", &controllers.ArticleController{})
	beego.Router("/search/:flag(_):keword", &controllers.SearchController{})
	beego.Router("/backdoor", &controllers.BackdoorController{})
	beego.AutoRouter(&controllers.MainController{})
	beego.AutoRouter(&controllers.ArticleController{})
	beego.AutoRouter(&controllers.SearchController{})
	beego.AutoRouter(&controllers.BackdoorController{})
}
