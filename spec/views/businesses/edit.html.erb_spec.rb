require 'rails_helper'

RSpec.describe "businesses/edit", :type => :view do
  before(:each) do
    @business = assign(:business, Business.create!(
      :user => nil,
      :url => "MyString",
      :email => "MyString",
      :phone => 1
    ))
  end

  it "renders the edit business form" do
    render

    assert_select "form[action=?][method=?]", business_path(@business), "post" do

      assert_select "input#business_user_id[name=?]", "business[user_id]"

      assert_select "input#business_url[name=?]", "business[url]"

      assert_select "input#business_email[name=?]", "business[email]"

      assert_select "input#business_phone[name=?]", "business[phone]"
    end
  end
end
