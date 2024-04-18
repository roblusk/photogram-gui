class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
    render({ :template => "photo_templates/index" })
  end

  def create
    p = Photo.new
    p.image = params.fetch("image_input")
    p.caption = params.fetch("caption_input")
    p.owner_id = params.fetch("owner_input")
    p.save

    redirect_to("/photos/#{p.id}")
  end
  
  def show
    id = params.fetch("id")
    @photo = Photo.find(id)

    render({ :template => "photo_templates/show" })
  end

  def update
    id = params.fetch("id")
    photo = Photo.find(id)
    photo.image = params.fetch("image_input")
    photo.caption = params.fetch("caption_input")
    photo.save
    redirect_to("/photos/#{photo.id}")

  end

  def destroy
    id = params.fetch("id")
    photo = Photo.find(id)
    photo.destroy
    redirect_to("/photos")
  end

  def create_comment
    c = Comment.new
    c.photo_id = params.fetch("photo_id_input")
    c.author_id = params.fetch("commenter_id_input")
    c.body = params.fetch("comment_input")
    c.save

    redirect_to("/photos/#{c.photo_id}")
  end
end
