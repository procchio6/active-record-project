class Author < ActiveRecord::Base
  has_many :books
  has_many :categories, through: :books

  validates_presence_of :name
  validates :name, uniqueness: true, presence: true 
end
