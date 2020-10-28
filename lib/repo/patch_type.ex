defmodule ExAudit.Type.Patch do
  @behaviour Ecto.Type

  def cast(a), do: {:ok, a}
  # def dump(patch), do: {:ok, :erlang.term_to_binary(patch)}
  def dump(patch) do
    IO.inspect(patch, label: "patch passed into dump")
    IO.inspect(erlang.term_to_binary(patch), label: "patch as binary")
    {:ok, :erlang.term_to_binary(patch)}
  end
  def load(binary) do
    IO.inspect(binary, label: "binary passed into load")
    IO.inspect(:erlang.binary_to_term(binary), label: "binary to term passed into load")
    {:ok, :erlang.binary_to_term(binary)}
  end
  def type, do: :binary
end
