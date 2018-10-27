class Post < ApplicationRecord
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :tags
  belongs_to :category, class_name: 'Tag'

  scope :for_domain, ->(domain) { where(domain: domain) }
  scope :basic_search, ->(query) { where('title ILIKE ?', "%#{query}%") }
  scope :triagram_search, ->(query) {
    where('similarity(title, ?) > 0.15', query)
  }

  def self.search(tokens)
    tokens.inject(Post) do |acc, token|
      acc = acc.triagram_search(token)
    end
  end
end
