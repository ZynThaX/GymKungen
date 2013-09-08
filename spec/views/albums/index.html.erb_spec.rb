require 'spec_helper'

describe "albums/index" do
  before(:each) do
    assign(:albums, [
      stub_model(Album,
        :is_profile_album => false,
        :user_id => 1,
        :title => "Title",
        :info => "MyText"
      ),
      stub_model(Album,
        :is_profile_album => false,
        :user_id => 1,
        :title => "Title",
        :info => "MyText"
      )
    ])
  end

  it "renders a list of albums" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
