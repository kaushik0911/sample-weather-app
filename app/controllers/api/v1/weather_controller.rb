module Api
  module V1
    class WeatherController < ApplicationController
      respond_to :json
      # weather api's ,
      # GET -> index : get all weather data
      # GET with id -> show : get all weather data in category parms id
      # PUT -> update : update latest weather data

      def index
        respond_with WeatherDatum.all
      end

      def show
        # get all weather data belongs to category id, params[:id]
        weather = Category.find(params[:id]).weather_data
        respond_with weather
      end

      def update
        # latest weather data
        to_be_update = params[:data]
        # unit type metric or imperial or kelvin
        unit_type = params[:units]

        # loop through to update data
        to_be_update.each do |row|
          # get specific row to update using city code
          report_row = WeatherDatum.find_by(city_id: row['id'])
          # update the data name, description, specific unit value get
          # from frontend
          report_row.update(city_name: row['name'], \
                            description: row['description'], \
                            unit_type['unit'] => row['temperature'])
        end
        respond_with
      end
    end
  end
end
