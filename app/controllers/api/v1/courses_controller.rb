class Api::V1::CoursesController < ApplicationController
  before_action :set_course, only: [:show, :update, :destroy]

  
  # GET /courses
  def index
    # if logged_in?
      courses = Course.all
      courses_json = CourseSerializer.new(courses).serialized_json 
      render json: courses_json
    # else 
    #   render json: {
    #   error: "You must be logged in"
    #   }
    # end 
  end

  # GET /courses/1
  def show
    render json: @course
  end

  # POST /courses
  def create
    # binding.pry
    @course = Course.new(course_params)

    if @course.save
      render json: CourseSerializer.new(@course), status: :created
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /courses/1
  def update
    if @course.update(course_params)
      render json: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  # DELETE /courses/1
  def destroy
    @course.destroy
    render json: CourseSerializer.new(@course) 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def course_params
      params.require(:course).permit(:name, :street, :city, :state, :difficulty, :mixed_use_park)
    end
end
