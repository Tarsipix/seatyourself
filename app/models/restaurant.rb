class Restaurant < ActiveRecord::Base
  has_many :reservations
  belongs_to :category
end