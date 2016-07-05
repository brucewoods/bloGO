package controllers

import (
   "fmt"
   "github.com/astaxie/beego"
       "github.com/astaxie/beego/orm"
	   	m "badassblog/models"
		"strconv"
)


type  ArticleController struct{
 	beego.Controller
}

func  (this *ArticleController) Get(){
 
   o :=orm.NewOrm()
   id ,_:=strconv.Atoi(this.Ctx.Input.Param(":id"))
    article :=m.Article{Id:id}
	err :=o.Read(&article)
	if err == orm.ErrNoRows {
    fmt.Println("查询不到")
} else if err == orm.ErrMissPK {
    fmt.Println("找不到主键")
} else {
   this.Data["model"]=article
}
   this.Data["test"]=err
   this.Data["id"]=id

}