package controllers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/utils/pagination"
	"github.com/beego/i18n"
	// "strconv"
	m "badassblog/models"

	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql" // import your used driver
)

type MainController struct {
	beego.Controller
}

//  substring  length you expect
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
	// register model
	//orm.RegisterModel(new(Article),new(User))
	orm.RegisterModelWithPrefix("blog_", new(m.User), new(m.Article))
	// set default database
	orm.RegisterDataBase("default", "mysql", "badassblog:gotobadass1A@/m10on_blog?charset=utf8", 30)

}
func ListAtricleByOffsetAndLimit(i int, c int, isCount bool) (*[]*m.Article, int64) {
	var articles []*m.Article
	o := orm.NewOrm()

	if isCount {
		num, _ := o.QueryTable(m.Article{}).Filter("Id__gt", 0).All(&articles)
		return &articles, num
	} else {
		num, _ := o.QueryTable(new(m.Article)).Filter("Id__gt", 0).Limit(c, i).All(&articles)
		return &articles, num
	}

}

func (c *MainController) Get() {
	// var articles []*article

	// o := orm.neworm()
	// num,err :=o.querytable(new(article)).filter("id__gt",0).all(&articles)
	// // sets this.data["paginator"] with the current offset (from the url query param)
	postsPerPage := 5
	// p :=c.Ctx.Input.Param(":p")

	// offset,_ :=strconv.Atoi(p)
	_, num := ListAtricleByOffsetAndLimit(0, postsPerPage, true)
	paginator := pagination.SetPaginator(c.Ctx, postsPerPage, num)
	articles, _ := ListAtricleByOffsetAndLimit(paginator.Offset(), postsPerPage, false) //3

	// fetch the next 20 posts

	// title:"test ",
	// keywords:"keywords",
	// description:"description",
	// content:"content",
	// createtime"2016-6-30",
	// author:"bruce",
	// lasttime:"2016-6-30"
	// insert

	c.Data["err"] = "error"
	c.Data["num"] = num
	c.Data["model"] = articles
	c.Layout = "nimda/layout.tpl"
	c.TplName = "index.tpl"
}
