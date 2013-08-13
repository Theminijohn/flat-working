class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #:recoverable,
         :rememberable, :trackable, :validatable

	# Rails 4 switched from using attr_accessor to strong parameters
	# I can Change and Edit in app/controllers/applicationcontroller.rb

	# ONE user has MANY Listings
	has_many :listings, :dependent => :destroy

	validates :user_bio, length: { maximum: 180 }
end
