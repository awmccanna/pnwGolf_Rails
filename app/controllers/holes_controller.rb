class HolesController < ApplicationController
  def create
    @course = Course.find(params[:course_id])
    @hole = @course.holes.create(hole_params)
    redirect_to course_path(@course)
  end

  def destroy
    @course = Course.find(params[:course_id])
    @hole = @course.holes.find(params[:id])
    @hole.destroy
    redirect_to course_path(@course)
  end

  private
  def hole_params
    params.require(:hole).permit(:holeNum, :blueYardage, :whiteYardage, :redYardage, :par)
  end


end
