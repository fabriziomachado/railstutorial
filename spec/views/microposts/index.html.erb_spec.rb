require 'spec_helper'

describe "microposts/index.html.erb" do
  before(:each) do
    assign(:microposts, [
      stub_model(Micropost,
        :content => "Content",
        :user_id => 1
      ),
      stub_model(Micropost,
        :content => "Content",
        :user_id => 1
      )
    ])
  end

  it "renders a list of microposts" do
    render
    rendered.should have_selector("tr>td", :content => "Content".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
  end
end
