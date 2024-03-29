class User < ActiveRecord::Base

  attr_accessor :user_type
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :user_type_id, :user_type, :company_attributes
  # attr_accessible :title, :body

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  #validates :email, :uniqueness => {:scope => :company_id}, :allow_blank => true

  belongs_to :company
  belongs_to :user_type

  has_many :jobs

  accepts_nested_attributes_for :company

  def name

    first_name+" "+last_name

  end
  
end