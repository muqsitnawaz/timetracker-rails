class CompaniesController < ApplicationController
	def index

	end

	def show
		@companies_id = params[:id]
		@greeting = "Hello to the company with id: "
	end
end
