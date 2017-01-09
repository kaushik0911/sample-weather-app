module Api
  module V1
    class CategoriesController < ApplicationController
      respond_to :json
      # categories api's, GET -> index

      # get all categories
      def index
        respond_with Category.all
      end
    end
  end
end
