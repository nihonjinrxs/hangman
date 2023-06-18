defmodule BrowserWeb.Router do
  use BrowserWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {BrowserWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/hangman", BrowserWeb do
    pipe_through :browser

    get "/", HangmanController, :home
  end

  # Other scopes may use custom stacks.
  # scope "/api", BrowserWeb do
  #   pipe_through :api
  # end
end
