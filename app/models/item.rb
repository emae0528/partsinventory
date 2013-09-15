class Item < ActiveRecord::Base
  attr_accessible :comments, :member_id, :name, :price, :quantity, :source, :status

  STATUS = ["Need", "Pending", "Order Complete", "Delivered"]

  validates :name, presence: true
  validates :price, presence: true, numericality: true
  validates :quantity, presence: true, numericality: true
  validates :source, presence: true
  validates :status, presence: true, inclusion: { in: STATUS }

  belongs_to :member

  scope :recent_pending, lambda { where(:status => "Pending").limit(5) }
  scope :recent_need, lambda { where(:status => "Need").limit(5) }
  scope :recent_pending, lambda { where(:status => "Delivered").limit(5) }
  scope :recent_pending, lambda { where(:status => "Order Complete").limit(5) }
  

end
