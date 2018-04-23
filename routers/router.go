package routers

import (
	"badassblog/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.MainController{})

    beego.Router("/page/:p", &controllers.MainController{})
    beego.Router("/article/:id.html",&controllers.ArticleController{})
	beego.Router("/search/:flag(_):keword", &controllers.SearchController{})
	beego.AutoRouter(&controllers.MainController{})
	beego.AutoRouter(&controllers.ArticleController{})
	beego.AutoRouter(&controllers.SearchController{})
}
