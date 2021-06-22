feature "viewing bookmarks" do
  scenario "page shows the list of bookmarks" do
    connection = PG.connect(dbname: "bookmark_manager_test")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

    visit ("/bookmarks")
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end

# feature "Index page" do
#   scenario "index page displays hello world" do
#     visit "/bookmarks/index"
#     expect(page).to have_content "Bookmark Manager"
#   end
# end

# feature "Index page" do
#   scenario "index page loads 200" do
#     visit "/bookmarks/index"
#     expect(page.status_code).to eq(200)
#   end
# end
