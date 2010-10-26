class Article < ActiveRecord::Base
  has_and_belongs_to_many :writers
  has_and_belongs_to_many :magazins
end
