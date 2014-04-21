class Restaurant < ActiveRecord::Base
  has_many :reservations
  has_many :customers, :through => :reservations
  belongs_to :category, foreign_key: "category_id"
  belongs_to :owner, class_name: "Owner", foreign_key: "owner_id" # restaurant owner user type
end
