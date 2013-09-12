class Member < ActiveRecord::Base
  attr_accessible :first_name, :handle, :last_name

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :handle, presence: true, uniqueness: true

  has_many :items

  def to_s
    first_name
  end

  def name
    "#{first_name} #{last_name}"
  end

  def complete_name_with_handle
    "#{first_name} #{last_name} (#{handle})"
  end
end
