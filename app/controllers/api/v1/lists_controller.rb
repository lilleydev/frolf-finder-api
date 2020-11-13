class Api::V1::ListsController < ApplicationController
  def index
    if logged_in?
      # binding.pry
      @lists = current_user.lists
      render json: ListSerializer.new(@lists)
    else 
      render json: {
      error: "You must be logged in"
      }
    end 
  end

  # GET /lists/1
  def show
    render json: @list
  end

  # POST /lists
  def create
    # binding.pry
    @list = current_user.lists.build(list_params)
    loc = Location.first 
    loc.lists << @list 
    if @list.save
      render json: @list, status: :created, location: @list
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lists/1
  def update
    if @list.update(list_params)
      render json: @list
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lists/1
  def destroy
    @list.destroy
    render json: CourseSerializer.new(@list) 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def list_params
      params.require(:list).permit(:name, :description, :start_date, :end_date)
    end

end
