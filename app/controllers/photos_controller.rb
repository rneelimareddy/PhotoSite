class PhotosController < ApplicationController
  def index
    @users = User.find(params[:id])
    @photos = Photo.where(:user_id => @users)
    @comments = Comment.where(:photo_id => @photos)
  end
end
