class CreateCompanies < ActiveRecord::Migration
	def change
		create_table :companies do |t|
			t.string :name		# defining fields for database
			t.timestamps null: false
		end
	end
end
