class User < ActiveRecord::Base
  has_many :book_records
  has_many :books, through: :book_records

  validates_presence_of :name
  validates :name, uniqueness: true, presence: true

  def check_out_book(book, due_date:)
    record = BookRecord.find_or_create_by(book:book, user:self, due_date: due_date)
    record.returned = false
    record.save
  end

  def return_book(book)
      record = BookRecord.find_by(book:book, user:self)
      record.returned = true
      record.save
  end
end
