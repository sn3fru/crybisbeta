require 'rails_helper'

RSpec.describe "tags/index", :type => :view do
  before(:each) do
    assign(:tags, [
      Tag.create!(
        :tags => "Tags",
        :sub_category => nil
      ),
      Tag.create!(
        :tags => "Tags",
        :sub_category => nil
      )
    ])
  end

  it "renders a list of tags" do
    render
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
