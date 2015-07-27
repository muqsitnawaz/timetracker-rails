class CompaniesController < ApplicationController
	# method for defining the index of the company
	def index
		@companies = Company.all;
	end

	# method for showing an individual company
	def show
		@company = Company.find(params[:id]);
		respond_to do |format|
			format.html # show.html.erb
			format.xml {render xml: @company}
			format.json {render json: @company}
		end
	end

	# methods for creating a new company
	def new
		@company = Company.new
	end

	def create
		@company = Company.new(params[:company].permit(:name))
		@company.save
		redirect_to @company
	end
end
