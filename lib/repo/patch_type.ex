defmodule ExAudit.Type.Patch do
  @behaviour Ecto.Type

  def cast(a), do: {:ok, a}
  # def dump(patch), do: {:ok, :erlang.term_to_binary(patch)}
  def dump(patch) do
    IO.inspect(patch, label: "patch passed into dump")
    IO.inspect(erlang.term_to_binary(patch), label: "patch as binary")
    {:ok, :erlang.term_to_binary(patch)}
  end
  def load(binary), do: {:ok, :erlang.binary_to_term(binary)}
  def type, do: :binary
end
