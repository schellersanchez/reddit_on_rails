class LinksController < ApplicationController
  def show
    @link = Link.find(params[:id])
    @comment = Comment.new
  end
  def new
    authenticate_user!
    @link = Link.new
  end
  def create
    @link = Link.new(params[:link])

    respond_to do |format|
      if @link.save
        format.html {render :action => "create"}
        format.json {render :json => @link}
      else
        format.html {render :action => "new"}
        format.json {render :json => @link.error, :status => :unprocessable_entity}
      end
    end
  end
end
