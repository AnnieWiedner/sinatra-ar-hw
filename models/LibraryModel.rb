class Library < ActiveRecord::Base
  self.table_name = 'libraries'
  has_many :circulations, class_name: 'Circulation'
  has_many :books, through: :circulations
end

#has_many :books #creates a method on Author.. #has to be plural
