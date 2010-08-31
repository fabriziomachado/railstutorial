require 'spec_helper'

describe "microposts/new.html.erb" do
  before(:each) do
    assign(:micropost, stub_model(Micropost,
      :new_record? => true,
      :content => "MyString",
      :user_id => 1
    ))
  end

  it "renders new micropost form" do
    render

    rendered.should have_selector("form", :action => microposts_path, :method => "post") do |form|
      form.should have_selector("input#micropost_content", :name => "micropost[content]")
      form.should have_selector("input#micropost_user_id", :name => "micropost[user_id]")
    end
  end
end
