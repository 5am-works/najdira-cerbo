defmodule NajdiraCerbo.Signifo do
  use Ecto.Schema

  schema "signifoj" do
    field :signifo, :string
    has_many :vortoj, NajdiraCerbo.Vorto
  end
end