class CompaniesController < ApplicationController
	# method for defining the index of the company
	def index
		@companies = Company.all;
	end

	# method for showing an individual company
	def show
		@company = Company.find(params[:id]);
	end
end
