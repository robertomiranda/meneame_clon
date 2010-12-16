require 'spec_helper'

describe "authentications/index.html.erb" do
  before(:each) do
    assign(:authentications, [
      stub_model(Authentication,
        :user_id => "",
        :uid => "Uid"
      ),
      stub_model(Authentication,
        :user_id => "",
        :uid => "Uid"
      )
    ])
  end

  it "renders a list of authentications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Uid".to_s, :count => 2
  end
end
