class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :author, presence: true
  validates :rating, numericality: {
    allow_nil: true,
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 100
  }
  has_many :checkouts
  has_many :categorizations
  has_many :categories, through: :categorizations
end
