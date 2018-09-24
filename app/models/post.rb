class Post < ApplicationRecord
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :tags
  belongs_to :category, class_name: 'Tag'
end
