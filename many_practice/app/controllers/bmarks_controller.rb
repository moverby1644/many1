class BmarksController < ApplicationController

  def index
    @bmarks = Bmark.all
  end

  def show
    @bmark = Bmark.find_by(id: params[:id])
  end

  def new
  end

  def create
    @bmark = Bmark.new
    @bmark.name = params[:name]
    @bmark.url = params[:url]
    @bmark.desc = params[:desc]
    @bmark.user_id = params[:user_id]

    if @bmark.save
      redirect_to "/bmarks/#{ @bmark.id }"
    else
      render 'new'
    end
  end

  def edit
    @bmark = Bmark.find_by(id: params[:id])
  end

  def update
    @bmark = Bmark.find_by(id: params[:id])
    @bmark.name = params[:name]
    @bmark.url = params[:url]
    @bmark.desc = params[:desc]
    @bmark.user_id = params[:user_id]

    if @bmark.save
      redirect_to "/bmarks/#{ @bmark.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @bmark = Bmark.find_by(id: params[:id])
    @bmark.destroy


    redirect_to "/bmarks"
  end
end
