require 'spec_helper'

describe "images/new" do
  before(:each) do
    assign(:image, stub_model(Image,
      :image_url => "MyString",
      :title => "MyString",
      :album_id => 1
    ).as_new_record)
  end

  it "renders new image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", images_path, "post" do
      assert_select "input#image_image_url[name=?]", "image[image_url]"
      assert_select "input#image_title[name=?]", "image[title]"
      assert_select "input#image_album_id[name=?]", "image[album_id]"
    end
  end
end
