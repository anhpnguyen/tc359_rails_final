class Story < ActiveRecord::Base
  has_many :author
  validates_presence_of :subject, :note
  def self.search(query)
    return all if query.blank?
    where('LOWER(subject) LIKE LOWER(?)', "%#{query}%")
  end
end
