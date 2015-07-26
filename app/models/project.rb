class Project < ActiveRecord::Base
	belongs_to :company
	has_many :works
	has_many :users, :through => :works

	# adding validations
	validates :name, presence: true, length: {minimum: 5}
	validates :company, presence: true
	validates :default_rate, numericality: {only_integer: true, greater_than: 50, less_than: 1000 }

	validates :slug, length: {minimum: 3}
	validates :slug, uniqueness: true

	# adding scopes
	scope :lowdefaultrate, -> {where("default_rate < 100")}
end