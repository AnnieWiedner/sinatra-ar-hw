class Circulation < ActiveRecord::Base
  self.table_name = 'circulations'
  belongs_to :book
  belongs_to :library
end
