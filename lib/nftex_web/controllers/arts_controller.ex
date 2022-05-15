defmodule NftexWeb.ArtsController do
  use NftexWeb, :controller
  use Absinthe.Phoenix.Controller, schema: NftexWeb.Schema, action: [mode: :internal]

  @graphql """
    query {
      arts {
        id
        artist_name
        description
        price
        hash
      }
    }
  """
  def index(conn, %{data: data}) do
    conn
    |> put_status(:ok)
    |> render("arts.json", data: data)
  end
end
