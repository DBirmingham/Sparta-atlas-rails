class CountriesController < ApplicationController
	def index
		@country = Country.all
	end
	def create
		@country = Country.new(country_params)
		if(@country.save)
			redirect_to(countries_path)
		else
			render action: :new
		end
	end
	def new
		@country = Country.new
	end
	def edit
		@country = Country.find(params[:id].to_i)
	end
	def show
		@country = Country.find(params[:id].to_i)
	end
	def update
		@country = Country.find(params[:id].to_i)
		@country.update(country_params)
		redirect_to(countries_path)
	end
	def destroy
		@country = Country.find(params[:id].to_i)
		@country.destroy
		redirect_to(countries_path)
	end
	def country_params
		params.require(:country).permit(:name, :size, :population, :capital, :leader_id)
	end
end
