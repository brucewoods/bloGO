package controllers

import (
 
   "github.com/astaxie/beego"
    
)


type  BackdoorController struct{
 	beego.Controller
}

func  (this *BackdoorController) Get(){
 

 
   this.Data["id"]="test"
 // this.Tpl="/nimda/bdindex.tpl"

}