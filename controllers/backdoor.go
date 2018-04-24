package controllers

import (
	"bytes"
	"fmt"
	"strconv"
	"strings"
	time "time"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	"github.com/brucewoods/bloGO/models"
)

//BackdoorController backdoor contruct
type BackdoorController struct {
	beego.Controller
}

func bco(key int, a *BackdoorController) {
	o := orm.NewOrm()

	id, _ := strconv.Atoi(a.Ctx.Input.Param(":id"))
	if key != 0 {
		id = key
	}
	art2 := new(models.Article)
	art2.Title = "Title"
	art2.Keywords = "Keywords"
	art2.Description = "Description"
	art2.Content = "Content"

	article := models.Article{Id: id}
	err := o.Read(&article)
	if err == orm.ErrNoRows {
		a.Data["model"] = art2
	} else if err == orm.ErrMissPK {
		a.Data["model"] = art2
	} else {

		a.Data["model"] = article
	}
	a.Data["test"] = err
	a.Data["id"] = id
	a.Data["title"] = article.Title

}

//Get backddor get
func (b *BackdoorController) Get() {
	id := b.GetString("id")
	pk := b.GetString("pk")
	if id != "123$" {
		b.Redirect("/", 302)
	}
	if pk != "" {
		aid, _ := strconv.Atoi(string(pk))
		bco(aid, b)
	}
	b.Data["id"] = id
	// this.Tpl="/nimda/bdindex.tpl"

}
func (this *BackdoorController) Post() {
	o := orm.NewOrm()
	var b bytes.Buffer
	o.Using("default") // Using default, you can use other database
	content := this.GetString("content")
	id := this.GetString("d")
	c := this.GetString("c")

	at := new(models.Article)
	infos := strings.Split(content, "$$")
	at.Title = strings.TrimSpace(infos[0])
	at.Keywords = strings.TrimSpace(infos[1])
	at.Description = strings.TrimSpace(infos[2])
	at.Content = infos[3]
	at.Author = "Feel"
	at.Createtime = time.Now().Format("2006-01-02 15:04:05")
	if id != "" {
		at.Id, _ = strconv.Atoi(id)
		fmt.Println(at.Id)
		at.Lasttime = at.Createtime
		at.Createtime = c
		o.Update(at)
	} else {
		at.Lasttime = at.Createtime
		o.Insert(at)
	}

	b.WriteString(at.Content)

	this.Ctx.WriteString("ok")

}
