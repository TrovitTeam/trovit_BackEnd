# == Schema Information
#
# Table name: messages
#
#  id                  :integer          not null, primary key
#  message             :string
#  date                :date
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  distributor_id      :integer
#  business_manager_id :integer
#

require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
