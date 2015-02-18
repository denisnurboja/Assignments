# == Schema Information
#
# Table name: supercomputers
#
#  id         :integer          not null, primary key
#  rank       :integer
#  name       :string
#  city       :string
#  country    :string
#  speed      :float
#  memory     :integer
#  power      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Supercomputer < ActiveRecord::Base
  has_many :applications
  validates :rank, presence: true
  validates :name, presence: true
  validates :speed, presence: true
end
