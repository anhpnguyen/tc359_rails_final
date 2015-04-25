class Story < ActiveRecord::Base
  validates_presence_of :subject, :note
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search.to_s}%"])
    else
      find(:all)
     end
  end
end
