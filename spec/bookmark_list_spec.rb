require "bookmark"
<<<<<<< HEAD
=======

>>>>>>> 5abc4c5722e67cd1a09c41dd622d2ebeb874749f
describe Bookmark do
  describe ".all" do
    it "returns all bookmarks" do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("Google")
      expect(bookmarks).to include("Makers Academy")
    end
  end
end
