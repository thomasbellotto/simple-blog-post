require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  
  # test "draft? returns true for draft blog post" do
  #   # binding.irb
  #   assert draft_blog_post.present?
  # end
  
  test "draft? returns true for draft blog post" do
    assert blog_posts(:draft).present?
  end

  test "draft? returns false for published blog post" do
    refute blog_posts(:scheduled).draft?
  end

  test "draft? returns false for scheduled blog post" do
    refute blog_posts(:published).draft?
  end
  
  test "published? returns true for published blog post" do
    assert blog_posts(:published).published?
  end

  test "published? returns false for draft blog post" do
    refute blog_posts(:draft).published?
  end

  test "published? returns false for scheduled blog post" do
    refute blog_posts(:scheduled).published?
  end

  test "scheduled? returns true for scheduled blog post" do
    assert blog_posts(:scheduled).scheduled?
  end

  test "scheduled? returns false for draft blog post" do
    refute blog_posts(:draft).scheduled?
  end

  test "scheduled? returns false for published blog post" do
    refute blog_posts(:published).scheduled?
  end

  # def draft_blog_post
  #   BlogPost.new(published_at: nil)
  # end
 
end
