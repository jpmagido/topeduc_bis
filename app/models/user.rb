class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :calendars
  has_many :resumes
  has_many :ids
  has_many :diplomas
  has_many :carte_vitales
  has_many :kbis
  has_many :ribs
  has_many :permis_bs
  
end
