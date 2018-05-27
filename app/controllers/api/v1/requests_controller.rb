class Api::V1::RequestsController < ApplicationController

    def index
      requests = Request.all
      render json: requests
    end

    def create
      request = Request.create(request_params)
      render json: request
    end

    def request_params
      params.require(:data).permit(:good_id)
    end

  end
