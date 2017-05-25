class Category < ActiveRecord::Base
  has_many :books
  has_many :authors, through: :books

  validates_presence_of :name
  validates :name, uniqueness: true, presence: true 
end
