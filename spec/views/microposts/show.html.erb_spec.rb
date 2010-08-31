require 'spec_helper'

describe "microposts/show.html.erb" do
  before(:each) do
    @micropost = assign(:micropost, stub_model(Micropost,
      :content => "Content",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Content".to_s)
    rendered.should contain(1.to_s)
  end
end
