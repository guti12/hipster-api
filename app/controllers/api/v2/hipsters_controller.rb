class Api::V2::HipstersController < ApplicationController

	def index
		@hipsters = Hipster.all
	end

	def create
		@hipster = Hipster.create(
															word: params[:word],
															sentence: params[:sentence],
															paragraph: params[:paragraph]
															)
		render :show
	end

	def show
		@hipster = Hipster.find(params[:id])
	end

end
