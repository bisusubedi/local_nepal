class Business < ActiveRecord::Base
  belongs_to :user
  validates_formatting_of :url, using: :url
  validates_formatting_of :email, using: :email
  acts_as_votable 
end
