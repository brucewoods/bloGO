package controllers

import (
	m "github.com/brucewoods/bloGO/models"
	"github.com/brucewoods/bloGO/utils"

	"fmt"
	"strconv"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
)

// ArticleController article struct
type ArticleController struct {
	beego.Controller
}

// Get article get action
func (a *ArticleController) Get() {

	common(0, a)

}

func common(key int, a *ArticleController) {
	o := orm.NewOrm()

	id, _ := strconv.Atoi(a.Ctx.Input.Param(":id"))
	if key != 0 {
		id = key
	}
	article := m.Article{Id: id}
	err := o.Read(&article)
	if err == orm.ErrNoRows {
		fmt.Println("查询不到")
	} else if err == orm.ErrMissPK {
		fmt.Println("找不到主键")
	} else {
		article.Content = utils.RenderMarkdown(article.Content)
		a.Data["model"] = article
	}
	a.Data["test"] = err
	a.Data["id"] = id
	a.Data["tt"] = article.Title
	a.Data["qw"] = article.Keywords
	a.Data["ds"] = article.Description

	a.Layout = "nimda/layout.tpl"
}

// About article get action
func (a *ArticleController) About() {
	common(50, a)
	a.TplName = "articlecontroller/get.tpl"
}

// Contact article get action
func (a *ArticleController) Contact() {
	common(55, a)
	a.TplName = "articlecontroller/get.tpl"
}
