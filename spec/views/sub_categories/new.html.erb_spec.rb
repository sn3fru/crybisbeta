require 'rails_helper'

RSpec.describe "sub_categories/new", :type => :view do
  before(:each) do
    assign(:sub_category, SubCategory.new(
      :title => "MyString",
      :description => "MyString",
      :category => nil
    ))
  end

  it "renders new sub_category form" do
    render

    assert_select "form[action=?][method=?]", sub_categories_path, "post" do

      assert_select "input#sub_category_title[name=?]", "sub_category[title]"

      assert_select "input#sub_category_description[name=?]", "sub_category[description]"

      assert_select "input#sub_category_category_id[name=?]", "sub_category[category_id]"
    end
  end
end
