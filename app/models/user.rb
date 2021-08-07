class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :profile

  enum status: ["no_status", "job_searching", "job_offering", "on_working"], _suffix: true
  enum region: ["Seoul", "Busan", "Inchen", "Suwon"], _suffix: true
  enum role: ["etc", "planner", "designer", "developer"], _suffix: true

  #enum을 여러개 사용할 경우 ", suffix: true"를 사용해야 좋다.
  
  acts_as_taggable_on :details


  has_many :teams, dependent: :destroy
end
