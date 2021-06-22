require "pg"

def setup_test_database
  p "Settings up test database..."
  connection = PG.connect(dbname: "bookmark_manager_test")
  connection.exec("TRUNCATE bookmarks;")
end
