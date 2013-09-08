require 'spec_helper'

describe "albums/new" do
  before(:each) do
    assign(:album, stub_model(Album,
      :is_profile_album => false,
      :user_id => 1,
      :title => "MyString",
      :info => "MyText"
    ).as_new_record)
  end

  it "renders new album form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", albums_path, "post" do
      assert_select "input#album_is_profile_album[name=?]", "album[is_profile_album]"
      assert_select "input#album_user_id[name=?]", "album[user_id]"
      assert_select "input#album_title[name=?]", "album[title]"
      assert_select "textarea#album_info[name=?]", "album[info]"
    end
  end
end
