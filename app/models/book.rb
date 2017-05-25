class Book < ActiveRecord::Base
  has_many :book_records
  has_many :users, through: :book_records
  belongs_to :author
  belongs_to :category

  validates_presence_of :title
  validates :title, uniqueness: true, presence: true
end
