class Api::V1::GoodsController < ApplicationController

    def index
      goods = Good.all
      render json: goods
    end

    def locations
      goods_locations = []
      Good.all.each do |g|
          goods_lat = g.role.user.latitude
          goods_lng = g.role.user.longitude
          goods_user = g.role
          goods_locations << {lat: goods_lat, lng: goods_lng, user: goods_user}
        end
      render json: goods_locations
    end


    def show
      good = Good.find(params[:id])
      render json: good
    end

    def good_params
      params.require(:data).permit(:name, :user_id, :description, :start_price, :current_price, :availability)
    end

  end
