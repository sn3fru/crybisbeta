require 'rails_helper'

RSpec.describe "answers/index", :type => :view do
  before(:each) do
    assign(:answers, [
      Answer.create!(
        :title => "Title",
        :body => "MyText",
        :proposta => "Proposta",
        :value => 1,
        :prospect => "Prospect",
        :user => nil,
        :question => nil
      ),
      Answer.create!(
        :title => "Title",
        :body => "MyText",
        :proposta => "Proposta",
        :value => 1,
        :prospect => "Prospect",
        :user => nil,
        :question => nil
      )
    ])
  end

  it "renders a list of answers" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Proposta".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Prospect".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
