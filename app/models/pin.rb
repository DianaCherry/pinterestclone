# == Schema Information
#
# Table name: pins
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Pin < ActiveRecord::Base
  acts_as_votable
  belongs_to :user

  has_attached_file :image, :styles => { :medium => "300x300>" }
                          "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
