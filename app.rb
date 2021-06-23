require "sinatra/base"
require "sinatra/reloader"
require "./lib/bookmark"

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/bookmarks" do
    @bookmarks = Bookmark.all
  end

  get "/bookmarks/new" do
    erb :"bookmarks/new"
  end
  post "/bookmarks" do
    Bookmark.create(url: params[:url])
    redirect "/bookmarks"
    # p params
    # p "Form data submitted to the /bookmarks route!"
    # url = params["url"]
    # connection = PG.connect(dbname: "bookmark_manager_test")
    # connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    # redirect "/bookmarks"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
