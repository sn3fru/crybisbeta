require 'rails_helper'

RSpec.describe "tags/edit", :type => :view do
  before(:each) do
    @tag = assign(:tag, Tag.create!(
      :tags => "MyString",
      :sub_category => nil
    ))
  end

  it "renders the edit tag form" do
    render

    assert_select "form[action=?][method=?]", tag_path(@tag), "post" do

      assert_select "input#tag_tags[name=?]", "tag[tags]"

      assert_select "input#tag_sub_category_id[name=?]", "tag[sub_category_id]"
    end
  end
end
