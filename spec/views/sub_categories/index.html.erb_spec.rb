require 'rails_helper'

RSpec.describe "sub_categories/index", :type => :view do
  before(:each) do
    assign(:sub_categories, [
      SubCategory.create!(
        :title => "Title",
        :description => "Description",
        :category => nil
      ),
      SubCategory.create!(
        :title => "Title",
        :description => "Description",
        :category => nil
      )
    ])
  end

  it "renders a list of sub_categories" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
