class Book < ActiveRecord::Base
  self.table_name = 'books'
  has_many :circulations, class_name: 'Circulation'
  has_many :libraries, through: :circulations
end


#  belongs_to :author #pluralization is important
