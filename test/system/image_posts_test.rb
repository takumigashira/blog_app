require "application_system_test_case"

class ImagePostsTest < ApplicationSystemTestCase
  setup do
    @image_post = image_posts(:one)
  end

  test "visiting the index" do
    visit image_posts_url
    assert_selector "h1", text: "Image posts"
  end

  test "should create image post" do
    visit image_posts_url
    click_on "New image post"

    fill_in "Content", with: @image_post.content
    fill_in "Title", with: @image_post.title
    click_on "Create Image post"

    assert_text "Image post was successfully created"
    click_on "Back"
  end

  test "should update Image post" do
    visit image_post_url(@image_post)
    click_on "Edit this image post", match: :first

    fill_in "Content", with: @image_post.content
    fill_in "Title", with: @image_post.title
    click_on "Update Image post"

    assert_text "Image post was successfully updated"
    click_on "Back"
  end

  test "should destroy Image post" do
    visit image_post_url(@image_post)
    click_on "Destroy this image post", match: :first

    assert_text "Image post was successfully destroyed"
  end
end
