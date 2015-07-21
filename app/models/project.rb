class Project < ActiveRecord::Base
  belongs_to :skill
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :link, presence: true
end
