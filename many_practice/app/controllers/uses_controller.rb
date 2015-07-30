class UsesController < ApplicationController

  def index
    @uses = Use.all
  end

  def show
    @use = Use.find_by(id: params[:id])
  end

  def new
  end

  def create
    @use = Use.new
    @use.name = params[:name]
    @use.email = params[:email]

    if @use.save
      redirect_to "/uses/#{ @use.id }"
    else
      render 'new'
    end
  end

  def edit
    @use = Use.find_by(id: params[:id])
  end

  def update
    @use = Use.find_by(id: params[:id])
    @use.name = params[:name]
    @use.email = params[:email]

    if @use.save
      redirect_to "/uses/#{ @use.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @use = Use.find_by(id: params[:id])
    @use.destroy


    redirect_to "/uses"
  end
end
