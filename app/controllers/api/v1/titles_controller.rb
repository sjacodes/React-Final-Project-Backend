class Api::V1::TitlesController < ApplicationController
    def index
        @Titles = Title.all
        render json: @Titles
      end
end
