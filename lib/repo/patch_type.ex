defmodule ExAudit.Type.Patch do
  @behaviour Ecto.Type

  def cast(a), do: {:ok, a}

  def dump(patch) do
    patch
    |> :erlang.term_to_binary()
    |> Base.encode64()
    |> ok()
  end
  def load(base64) do
    base64
    |> Base.decode64()
    |> :erlang.binary_to_term()
    |> ok()
  end

  def type, do: :binary

  defp ok(res), do: {:ok, res}
end
