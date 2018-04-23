package main

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	"github.com/beego/i18n"
	m "github.com/brucewoods/bloGO/models"
	_ "github.com/brucewoods/bloGO/routers"
	t "github.com/brucewoods/bloGO/utils"
)

// MySubstring  substring  length you expect
func MySubstring(in string) (out string) {
	if len(in) > 300 {
		out = in[:300] + "......"
	} else {
		out = in + "......"
	}

	return
}
func init() {
	beego.AddFuncMap("i18n", i18n.Tr)
	beego.AddFuncMap("sb", MySubstring)
	beego.AddFuncMap("md", t.RenderMarkdown)
	// register model
	//orm.RegisterModel(new(Article),new(User))
	orm.RegisterModelWithPrefix("blog_", new(m.User), new(m.Article))
	// set default database
	orm.RegisterDataBase("default", "mysql", "rmZYWTlc07n1yaet:SiBGmPTfauLmjdZA@/m10on_blog?charset=utf8", 30)
}

func main() {

	beego.Run()
}
