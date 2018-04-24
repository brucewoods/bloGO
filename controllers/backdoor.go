package controllers

import (
	"bytes"
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

//Get backddor get
func (b *BackdoorController) Get() {
	id := b.GetString("id")
	if id != "123$" {
		b.Redirect("/", 302)
	}
	b.Data["id"] = id
	// this.Tpl="/nimda/bdindex.tpl"

}
func (this *BackdoorController) Post() {
	o := orm.NewOrm()
	var b bytes.Buffer
	o.Using("default") // Using default, you can use other database
	content := this.GetString("content")

	at := new(models.Article)
	infos := strings.Split(content, "$$")
	at.Createtime = time.Now().Format("2006-01-02 15:04:05")
	at.Author = "Feel"

	at.Title = strings.TrimSpace(infos[0])
	at.Keywords = strings.TrimSpace(infos[1])
	at.Description = strings.TrimSpace(infos[2])
	at.Content = infos[3]
	at.Lasttime = at.Createtime

	b.WriteString(at.Content)
	o.Insert(at)

	o.Commit()

	this.Ctx.WriteString("ok")
}
