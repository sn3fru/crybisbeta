require 'rails_helper'

RSpec.describe "questions/index", :type => :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :title => "Title",
        :body => "MyText",
        :bounty => 1,
        :prospect => "Prospect",
        :user => nil
      ),
      Question.create!(
        :title => "Title",
        :body => "MyText",
        :bounty => 1,
        :prospect => "Prospect",
        :user => nil
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Prospect".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
