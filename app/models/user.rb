# == Schema Information
#
# Table name: users
#
#  id                            :integer          not null, primary key
#  email                         :string           default(""), not null
#  encrypted_password            :string           default(""), not null
#  reset_password_token          :string
#  reset_password_sent_at        :datetime
#  remember_created_at           :datetime
#  nombre                        :string
#  identificacion                :string
#  aspiringTeachingCategory_id   :integer
#  contractedTeachingCategory_id :integer
#  researcherCategory_id         :integer
#  created_at                    :datetime         not null
#  updated_at                    :datetime         not null
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :aspiringTeachingCategory, optional: true
  belongs_to :contractedTeachingCategory,optional: true
  belongs_to :researcherCategory,optional: true

end
