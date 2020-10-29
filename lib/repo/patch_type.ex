defmodule ExAudit.Type.Patch do
  @behaviour Ecto.Type

  def cast(a), do: {:ok, a}

  def dump(patch) do
    patch
    |> :erlang.term_to_binary()
    |> Base.encode64()
    |> ok()
  end
  def load(binary) do
    |> :erlang.binary_to_term()
    |> Base.encode64()
    |> ok()
  end

  def type, do: :binary

  defp ok(res), do: {:ok, res}
end
