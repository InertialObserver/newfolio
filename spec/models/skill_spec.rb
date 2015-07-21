require 'rails_helper'

RSpec.describe Skill, type: :model do
  it { should validate_presence_of :name }
	it { should validate_presence_of :description }
	it { should have_many :projects }
end
