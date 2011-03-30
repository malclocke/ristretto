require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  def setup
    @customer = Factory.create(:customer)
    @user = Factory.create(:user)
    @contact = Factory.create(:contact, :customer => @customer, :user => @user)
  end

  test "should have correct scopes" do
    Contact::ROLES.each do |role|
      assert_respond_to Contact, role
    end
  end
end
