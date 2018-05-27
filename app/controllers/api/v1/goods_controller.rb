class Api::V1::GoodsController < ApplicationController

    def index
      goods = Good.all
      render json: goods
    end

    def show
      good = Good.find(params[:id])
      render json: good
    end

    def good_params
      params.require(:data).permit(:name, :user_id, :description, :start_price, :current_price, :availability)
    end

  end
