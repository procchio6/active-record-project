class BookRecord < ActiveRecord::Base
  has_many :users
  has_many :books
  
  def overdue?

  end
end
