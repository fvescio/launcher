class Project < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  acts_as_votable 
  def self.search(search)
    if search
      self.where("title LIKE ?", "%#{search}%")
    else
      self.all
  	end
  end
end
