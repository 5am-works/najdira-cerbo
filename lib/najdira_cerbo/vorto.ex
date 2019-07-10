defmodule NajdiraCerbo.Vorto do
  use Ecto.Schema

  schema "vortoj" do
    field :vorto, :string
    field :ecoj, :integer

    belongs_to :signifo, NajdiraCerbo.Signifo
  end
end