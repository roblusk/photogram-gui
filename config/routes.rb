Rails.application.routes.draw do
  get("/", { :controller=>"users", :action=>"home" })
  get("/users", { :controller=>"users", :action=>"index" })
  get("/users/:username", { :controller=>"users", :action=>"show" })
  post("/users", { :controller=>"users", :action=>"create" })
  post("/users/:username", { :controller=>"users", :action=>"update" })
end
