class RegionsController < ApplicationController
	def index
		@region = Region.all
	end
	def create
		@region = Region.new(region_params)
		if(@region.save)
			redirect_to(regions_path)
		else
			render action: :new
		end
	end
	def new
		@region = Region.new
	end
	def edit
		@region = Region.find(params[:id].to_i)
	end
	def show
		@region = Region.find(params[:id].to_i)
	end
	def update
		@region = Region.find(params[:id].to_i)
		@region.update(region_params)
		redirect_to(regions_path)
	end
	def destroy
		@region = Region.find(params[:id].to_i)
		@region.destroy
		redirect_to(regions_path)
	end
	def region_params
		params.require(:region).permit(:name, :food, :desc, :country_id)
	end
end
