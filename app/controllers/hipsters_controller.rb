class HipstersController < ApplicationController
	def index
		@hipsters = Hipster.all
	end

	def create
		@hipster = Hipster.new(word: params[:word], sentence: params[:sentence], paragraph: params[:paragraph])
	end

end
