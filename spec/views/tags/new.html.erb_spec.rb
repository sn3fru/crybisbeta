require 'rails_helper'

RSpec.describe "tags/new", :type => :view do
  before(:each) do
    assign(:tag, Tag.new(
      :tags => "MyString",
      :sub_category => nil
    ))
  end

  it "renders new tag form" do
    render

    assert_select "form[action=?][method=?]", tags_path, "post" do

      assert_select "input#tag_tags[name=?]", "tag[tags]"

      assert_select "input#tag_sub_category_id[name=?]", "tag[sub_category_id]"
    end
  end
end
