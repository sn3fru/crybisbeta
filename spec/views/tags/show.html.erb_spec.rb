require 'rails_helper'

RSpec.describe "tags/show", :type => :view do
  before(:each) do
    @tag = assign(:tag, Tag.create!(
      :tags => "Tags",
      :sub_category => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Tags/)
    expect(rendered).to match(//)
  end
end
