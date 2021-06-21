require "bookmark"
describe Bookmark do
  describe ".all" do
    it "returns all bookmarks" do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("Google")
      expect(bookmarks).to include("Makers Academy")
    end
  end
end
