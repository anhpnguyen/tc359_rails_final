class Story < ActiveRecord::Base
  has_many :author
  validates_presence_of :subject, :note
  def self.search(search)
    if search
      where('subject LIKE ?', "%#{search}%")
    else
      all
     end
  end
end
