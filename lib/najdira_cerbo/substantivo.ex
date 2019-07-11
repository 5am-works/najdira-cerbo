defmodule NajdiraCerbo.Substantivo do
  import NajdiraCerbo.Vorto

  defstruct vorto: nil,
    formo: nil,
    prepozicio: nil
  @type t :: %NajdiraCerbo.Substantivo{
    vorto: NajdiraCerbo.Vorto.t | NajdiraCerbo.Frazo.t,
    formo: s_formo,
    prepozicio: nil
  }
  @type s_formo :: :s0 | :s1 | :s2 | :s3 

  @spec formo(String.t) :: s_formo | :nevalida
  def formo(vorto) when is_binary(vorto) do
    fino = fino(vorto)
    cond do
      fino == :nevalida -> :nevalida
      MapSet.member?(s1_finaĵoj(), fino) -> :s1
      true -> :nevalida
    end
  end
end