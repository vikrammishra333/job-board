class Company < ActiveRecord::Base

  attr_accessible :description, :name, :url

  has_many :users, :dependent => :delete_all

  validates :name, :presence => true
  validates :url, :presence => true

end
