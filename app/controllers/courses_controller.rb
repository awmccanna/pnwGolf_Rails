class CoursesController < ApplicationController

  def list
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
  end

  def create
    @course = Course.new(course_params)
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def course_params
    params.require(:course).permit(:name, :address, :city, :state, :zip)
  end





end
