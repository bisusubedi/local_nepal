require 'rails_helper'

RSpec.describe "businesses/show", :type => :view do
  before(:each) do
    @business = assign(:business, Business.create!(
      :user => nil,
      :url => "Url",
      :email => "Email",
      :phone => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/1/)
  end
end
