class Reservation < ActiveRecord::Base
  belongs_to :customer, class_name: "Customer", foreign_key: "customer_id"
  belongs_to :restaurant
end
