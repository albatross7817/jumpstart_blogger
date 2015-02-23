class TagsController < ApplicationController
 def index
        @tag = Tag.all
 end
def show
    @tag = Tag.find(params[:id])
end
def new
    @tag = Tag.new 
end
def create
  @Tag = Tag.new(tag_id)
  @Tag.save
  flash.notice = "Tag '#{@tag.name}' created!"
        redirect_to tag_path(@tag)
end
 def destroy
        @tag = Tag.find(params[:id])
        @tag.destroy
        flash.notice = "Tag '#{@tag.name}' destroyed!"
        redirect_to articles_path
 end
end   
