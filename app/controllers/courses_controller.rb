class CoursesController < ApplicationController

  def list
  end

  def show
  end

  def new
  end

  def create
    render plain: params[:course].inspect
  end

  def edit
  end

  def update
  end

  def delete
  end

end
