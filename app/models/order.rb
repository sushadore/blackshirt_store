class Order < ActiveRecord::Base
	has_many :order_items
	belongs_to :account

	before_save :update_total
  before_create :update_status


end
