class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :calendars
  has_many :resumes
  has_many :ids
  has_many :diplomas
  has_many :carte_vitales
  has_many :kbis
  has_many :ribs
  has_many :permis_bs
  has_many :requests
  has_many :contracts

end
