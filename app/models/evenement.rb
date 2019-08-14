class Evenement < ApplicationRecord
	belongs_to :user
	has_many :attendances
	has_many :users ,through: :attendances
	validates :start_date ,presence: true 
	validates :duration ,presence: true
	validates :title ,presence: true ,length: {in: 5..140}
	validates :price ,presence: true ,numericiality: {in: 1..1000}
	validates :location ,presence: true


end
