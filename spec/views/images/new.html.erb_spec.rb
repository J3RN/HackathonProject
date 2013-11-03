require 'spec_helper'

describe "images/new" do
  before(:each) do
    assign(:image, stub_model(Image,
      :title => "MyString",
      :loves => 1,
      :image => ""
    ).as_new_record)
  end

  it "renders new image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", images_path, "post" do
      assert_select "input#image_title[name=?]", "image[title]"
      assert_select "input#image_loves[name=?]", "image[loves]"
      assert_select "input#image_image[name=?]", "image[image]"
    end
  end
end
