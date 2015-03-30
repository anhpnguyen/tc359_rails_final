class Story < ActiveRecord::Base
  validates_presence_of :subject, :note
end
