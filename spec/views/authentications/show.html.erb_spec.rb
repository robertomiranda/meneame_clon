require 'spec_helper'

describe "authentications/show.html.erb" do
  before(:each) do
    @authentication = assign(:authentication, stub_model(Authentication,
      :user_id => "",
      :uid => "Uid"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Uid/)
  end
end
