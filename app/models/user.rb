class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :sex
  belongs_to_active_hash :likesports
  belongs_to_active_hash :liketeam
  belongs_to_active_hash :prefectures
  belongs_to_active_hash :job
  belongs_to_active_hash :marriage

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :Relationship
  has_many :chat_massage
  has_many :chat_room_users
  has_one_attached :image

  validates :nickname,:sex_id,:birthday,:watching_date, presence: true
  validates :first_name,:last_name, presence:true, format: {with: /\A[ぁ-んァ-ン一-龥]/}
  validates :first_name_kana,:last_name_kana, presence:true, format: {with: /\A[ァ-ヶー－]+\z/}
  validates :password, format: {with: /\A[a-z0-9]+\z/i}
end
