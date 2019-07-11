defmodule NajdiraCerbo.Vorto do
  use Ecto.Schema
  @type t :: %NajdiraCerbo.Vorto{
    vorto: String.t,
    ecoj: integer,
  }

  schema "vortoj" do
    field :vorto, :string
    field :ecoj, :integer

    belongs_to :signifo, NajdiraCerbo.Signifo
  end

  @type vorto_tipo :: :substantivo | :verbo | :helpvorto
  @spec tipo(String.t) :: vorto_tipo | :nevalida
  def tipo(vorto) when is_binary(vorto) do
    fino = fino(vorto)
    cond do
      fino == :nevalida -> :nevalida
      MapSet.member?(s1_finaĵoj(), fino) -> :substantivo
      true -> :nevalida
    end
  end

  @spec s1_finaĵoj :: MapSet.t(String.t)
  def s1_finaĵoj do
    ["ma", "mE", "na", "to", "ri", "ju", "ka"] |> Enum.into(MapSet.new)
  end

  @spec s2_finaĵoj :: MapSet.t(String.t)
  def s2_finaĵoj do
    ["mo", "mA", "ni", "tu", "ra", "jE", "ki"] |> Enum.into(MapSet.new)
  end

  @spec fino(String.t) :: String.t | :nevalida
  def fino(vorto) when is_binary(vorto) do
    longeco = String.length(vorto)
    if rem(longeco, 2) != 0 do
      :nevalida
    else
      vorto |> String.slice(longeco - 2, 2)
    end
  end
end