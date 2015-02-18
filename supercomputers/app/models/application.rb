# == Schema Information
#
# Table name: applications
#
#  id               :integer          not null, primary key
#  project          :string
#  supercomputer_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Application < ActiveRecord::Base
  belongs_to :supercomputer
  validates :project, presence: true
end
