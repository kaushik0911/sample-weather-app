class WeatherController < ApplicationController
  # check logged user is an admin
  before_action :check_admin
  # CRUD operations for weather

  def index
    @all_weather = WeatherDatum.all
  end

  def new
    @weather = WeatherDatum.new
  end

  def edit
    @weather = WeatherDatum.find(params[:id])
  end

  def create
    @weather = WeatherDatum.new(weather_params)
    if @weather.save
      flash[:notice] = @weather.city_name.concat(' weather data
        successfully created')
      redirect_to action: 'index'
    else
      render action: 'new'
    end
  end

  def update
    @weather = WeatherDatum.find(params[:id])
    if @weather.update_attributes(weather_params)
      flash[:notice] = @weather.city_name.concat(' weather data
        successfully updated')
      redirect_to action: 'index'
    else
      render action: 'edit'
    end
  end

  def destroy
    @weather = WeatherDatum.find(params[:id])
    if @weather.destroy
      flash[:notice] = @weather.city_name.concat(' weather data
        successfully deleted')
      redirect_to action: 'index'
    else
      flash[:notice] = @category.category_name.concat('
        category unable deleted')
      redirect_to action: 'index'
    end
  end

  private

  # in creating and updating weather admin only passing city code,
  # city name and categories.
  # temp and description need to be update through frontend by
  # calling update method with valid data
  def weather_params
    params.require(:weather_datum).permit(:city_id, \
      :city_name, category_ids: [])
  end
end
