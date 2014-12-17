require 'rails_helper'

RSpec.describe "questions/edit", :type => :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :title => "MyString",
      :body => "MyText",
      :bounty => 1,
      :prospect => "MyString",
      :user => nil
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "input#question_title[name=?]", "question[title]"

      assert_select "textarea#question_body[name=?]", "question[body]"

      assert_select "input#question_bounty[name=?]", "question[bounty]"

      assert_select "input#question_prospect[name=?]", "question[prospect]"

      assert_select "input#question_user_id[name=?]", "question[user_id]"
    end
  end
end
