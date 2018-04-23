package models
// Model Struct
type Article struct {
    Id   int    `orm:"auto"`
    Title string `orm:"size(100)"`
    Keywords string `orm:"size(200)"`
    Description string `orm:"size(300)"`
    Content string 
    Createtime string
	Author  string  `orm:"size(100)"`  
    Lasttime string
}
type User struct{
   Id   int    `orm:"auto"`
   Name string 
}