class Api::V1::ListsController < ApplicationController
  before_action :set_list, only: [:show, :update, :destroy]  

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
    if @list.save
      render json: ListSerializer.new(@list), status: :created
    else
      error_resp = {
        error: @list.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lists/1
  def update
    if @list.update(list_params)
      render json: ListSerializer.new(@list), status: :ok
    else
      error_resp = {
        error: @list.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
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
