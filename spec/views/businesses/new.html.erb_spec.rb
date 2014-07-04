require 'rails_helper'

RSpec.describe "businesses/new", :type => :view do
  before(:each) do
    assign(:business, Business.new(
      :user => nil,
      :url => "MyString",
      :email => "MyString",
      :phone => 1
    ))
  end

  it "renders new business form" do
    render

    assert_select "form[action=?][method=?]", businesses_path, "post" do

      assert_select "input#business_user_id[name=?]", "business[user_id]"

      assert_select "input#business_url[name=?]", "business[url]"

      assert_select "input#business_email[name=?]", "business[email]"

      assert_select "input#business_phone[name=?]", "business[phone]"
    end
  end
end
