require 'rails_helper'

RSpec.describe "businesses/index", :type => :view do
  before(:each) do
    assign(:businesses, [
      Business.create!(
        :user => nil,
        :url => "Url",
        :email => "Email",
        :phone => 1
      ),
      Business.create!(
        :user => nil,
        :url => "Url",
        :email => "Email",
        :phone => 1
      )
    ])
  end

  it "renders a list of businesses" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
