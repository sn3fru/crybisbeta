require 'rails_helper'

RSpec.describe "questions/show", :type => :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :title => "Title",
      :body => "MyText",
      :bounty => 1,
      :prospect => "Prospect",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Prospect/)
    expect(rendered).to match(//)
  end
end
