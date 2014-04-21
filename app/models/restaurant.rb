class Restaurant < ActiveRecord::Base
  has_many :reservations
  has_many :customers, :through => :reservations
  belongs_to :category
  belongs_to :owner # restaurant owner user type
end
