require 'spec_helper'

describe "images/edit" do
  before(:each) do
    @image = assign(:image, stub_model(Image,
      :image_url => "MyString",
      :title => "MyString",
      :album_id => 1
    ))
  end

  it "renders the edit image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", image_path(@image), "post" do
      assert_select "input#image_image_url[name=?]", "image[image_url]"
      assert_select "input#image_title[name=?]", "image[title]"
      assert_select "input#image_album_id[name=?]", "image[album_id]"
    end
  end
end
