package routers

import (
	"badassblog/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.MainController{})
    beego.Router("/page/:p", &controllers.MainController{})
    beego.Router("/article/:id.html",&controllers.ArticleController{})
}
