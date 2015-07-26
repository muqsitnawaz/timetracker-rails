class WorksController < ApplicationController
	def index
		def index
			if (params[:days])
				@works = Work.recentdays(params[:days]).order('datetimeperformed desc')
			else
				@works = Work.all.order('datetimeperformed desc')
			end
		end
	end

	def show
		@work = Work.find(params[:id])
	end
end
