class Member < ActiveRecord::Base
  attr_accessible :first_name, :handle, :last_name

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :handle, presence: true, uniqueness: true

  has_many :items
end
