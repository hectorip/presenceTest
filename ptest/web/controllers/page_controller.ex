defmodule Ptest.PageController do
  use Ptest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
