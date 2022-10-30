require 'rails_helper'

RSpec.describe "restaurants/index", type: :view do
  before(:each) do
    assign(:restaurants, [
      Restaurant.create!(
        :name => "Name",
        :flavor => "Flavor",
        :rating => "Rating",
        :address => "Address",
        :details => "Details"
      ),
      Restaurant.create!(
        :name => "Name",
        :flavor => "Flavor",
        :rating => "Rating",
        :address => "Address",
        :details => "Details"
      )
    ])
  end

  it "renders a list of restaurants" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Flavor".to_s, :count => 2
    assert_select "tr>td", :text => "Rating".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Details".to_s, :count => 2
  end
end
