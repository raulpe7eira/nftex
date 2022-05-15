defmodule Nftex.Arts do
  alias Nftex.Arts.{Create, Get, List}

  defdelegate create(params), to: Create, as: :call
  defdelegate get(id), to: Get, as: :call
  defdelegate list_all(), to: List, as: :call
end
