# == Schema Information
#
# Table name: provinces
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  department_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class ProvinceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
