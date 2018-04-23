package controllers

import (
	m "github.com/brucewoods/bloGO/models"

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

	o := orm.NewOrm()
	id, _ := strconv.Atoi(a.Ctx.Input.Param(":id"))
	article := m.Article{Id: id}
	err := o.Read(&article)
	if err == orm.ErrNoRows {
		fmt.Println("查询不到")
	} else if err == orm.ErrMissPK {
		fmt.Println("找不到主键")
	} else {
		a.Data["model"] = article
	}
	a.Data["test"] = err
	a.Data["id"] = id
	a.Data["title"] = article.Title
	a.Layout = "nimda/layout.tpl"

}
