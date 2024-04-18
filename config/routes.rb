Rails.application.routes.draw do
  get("/", { :controller=>"users", :action=>"home" })
  get("/users", { :controller=>"users", :action=>"index" })
  get("/users/:user_id", { :controller=>"users", :action=>"show" })
  post("/users", { :controller=>"users", :action=>"create" })
end
