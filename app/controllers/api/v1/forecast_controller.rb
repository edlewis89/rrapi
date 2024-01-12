class Api::V1::ForecastController < ApplicationController
  def show
    @cached = false
    @zip_code = params[:zip_code]
    weather_service = WeatherService.new(Rails.application.credentials.openweathermap[:api_key])

    # Check the cache for the forecast data
    cached_forecast = Rails.cache.fetch("forecast_#{@zip_code}", expires_in: 30.minutes)

    if cached_forecast
      @data, @cached = JSON.parse(cached_forecast), true
    else
      # Fetch forecast from API
      api_forecast = weather_service.get_forecast_by_zip(@zip_code)

      if api_forecast
        # Save forecast to cache
        Rails.cache.write("forecast_#{@zip_code}", api_forecast.to_json, expires_in: 30.minutes)
        @data, @cached = api_forecast, false
      else
        @error = 'Unable to retrieve forecast data.'
      end
    end

    render formats: [:json]
  end
end
