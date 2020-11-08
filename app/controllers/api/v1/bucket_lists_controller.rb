class Api::V1::BucketListsController < ApplicationController
  def index
    # if logged_in?
      bucket_lists = BucketList.all
      bucket_lists_json = BucketListSerializer.new(bucket_lists)
      render json: bucket_lists_json
    # else 
    #   render json: {
    #   error: "You must be logged in"
    #   }
    # end 
  end

  # GET /bucket_lists/1
  def show
    render json: @bucket_list
  end

  # POST /bucket_lists
  def create
    @bucket_list = BucketList.new(bucket_list_params)

    if @bucket_list.save
      render json: @bucket_list, status: :created, location: @bucket_list
    else
      render json: @bucket_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bucket_lists/1
  def update
    if @bucket_list.update(bucket_list_params)
      render json: @bucket_list
    else
      render json: @bucket_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bucket_lists/1
  def destroy
    @bucket_list.destroy
    render json: @bucket_list 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bucket_list
      @bucket_list = BucketList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bucket_list_params
      params.require(:bucket_list).permit(:name, :street, :city, :state, :difficulty, :mixed_use_park)
    end
end
end
