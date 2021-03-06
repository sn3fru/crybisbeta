require 'rails_helper'

RSpec.describe "answers/edit", :type => :view do
  before(:each) do
    @answer = assign(:answer, Answer.create!(
      :title => "MyString",
      :body => "MyText",
      :proposta => "MyString",
      :value => 1,
      :prospect => "MyString",
      :user => nil,
      :question => nil
    ))
  end

  it "renders the edit answer form" do
    render

    assert_select "form[action=?][method=?]", answer_path(@answer), "post" do

      assert_select "input#answer_title[name=?]", "answer[title]"

      assert_select "textarea#answer_body[name=?]", "answer[body]"

      assert_select "input#answer_proposta[name=?]", "answer[proposta]"

      assert_select "input#answer_value[name=?]", "answer[value]"

      assert_select "input#answer_prospect[name=?]", "answer[prospect]"

      assert_select "input#answer_user_id[name=?]", "answer[user_id]"

      assert_select "input#answer_question_id[name=?]", "answer[question_id]"
    end
  end
end
