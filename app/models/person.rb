class Person < ActiveRecord::Base
  include OmniauthablePerson
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :confirmable, :omniauthable,
         omniauth_providers: [:facebook, :google]

  validates :name, :email, presence: true
  validates :name, format: { with: /\A[a-zA-Z. ]*\z/,
                             message: 'Please use only English Alphabets' }

end
