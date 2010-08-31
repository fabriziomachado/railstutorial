require 'spec_helper'

describe "microposts/edit.html.erb" do
  before(:each) do
    @micropost = assign(:micropost, stub_model(Micropost,
      :new_record? => false,
      :content => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit micropost form" do
    render

    rendered.should have_selector("form", :action => micropost_path(@micropost), :method => "post") do |form|
      form.should have_selector("input#micropost_content", :name => "micropost[content]")
      form.should have_selector("input#micropost_user_id", :name => "micropost[user_id]")
    end
  end
end
