defmodule Nftex.Arts.List do
  alias Nftex.{Art, Repo}

  def call() do
    {:ok, Repo.all(Art)}
  end
end
