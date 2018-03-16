class LeadersController < ApplicationController
	def home
		render :home
	end
	def index
		@leader = Leader.all
	end
	def create
		@leader = Leader.new(leader_params)
		if(@leader.save)
			redirect_to(leaders_path)
		end
	end
	def new
		@leader = Leader.new
	end
	def edit
		@leader = Leader.find(params[:id].to_i)
	end
	def show
		@leader = Leader.find(params[:id].to_i)
	end
	def update
		@leader = Leader.find(params[:id].to_i)
		@leader.update(leader_params)
		redirect_to(leaders_path)
	end
	def destroy
		@leader = Leader.find(params[:id].to_i)
		@leader.destroy
		redirect_to(leaders_path)
	end
	def leader_params
		params.require(:leader).permit(:name, :age, :title)
	end
end
