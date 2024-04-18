Rails.application.routes.draw do
  get("/", { :controller=>"users", :action=>"home" })
  get("/users", { :controller=>"users", :action=>"index" })
  get("/users/:username", { :controller=>"users", :action=>"show" })
  post("/users", { :controller=>"users", :action=>"create" })
  post("/users/:username", { :controller=>"users", :action=>"update" })

  get("/photos", { :controller=>"photos", :action=>"index" })
  post("/photos", { :controller=>"photos", :action=>"create" })
  get("/photos/:id", { :controller=>"photos", :action=>"show" })
  post("/photos/:id/edit", { :controller=>"photos", :action=>"update" })
  get("/delete_photo/:id", { :controller=>"photos", :action=>"destroy" })
  post("/photos/:id/new_comment", { :controller=>"photos", :action=>"create_comment" })
end
