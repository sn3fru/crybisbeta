require 'rails_helper'

RSpec.describe "answers/show", :type => :view do
  before(:each) do
    @answer = assign(:answer, Answer.create!(
      :title => "Title",
      :body => "MyText",
      :proposta => "Proposta",
      :value => 1,
      :prospect => "Prospect",
      :user => nil,
      :question => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Proposta/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Prospect/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
