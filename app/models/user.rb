class User < ActiveRecord::Base
  has_many :book_records
  has_many :books, through: :book_records

  validates_presence_of :name
  validates :name, uniqueness: true, presence: true 
end
