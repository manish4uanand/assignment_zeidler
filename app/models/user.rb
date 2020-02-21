class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum gender: [:male, :female, :unknown]

  def self.genders_for_select
    genders.keys.map{ |x| [x.humanize, x] }
  end
end
