defmodule NajdiraCerbo.Frazo do
  defstruct komenca_vorto: nil,
    verbo: nil,
    prekondicio: nil,
    postkondicio: nil
  @type t :: %NajdiraCerbo.Frazo{
    komenca_vorto: nil,
    verbo: NajdiraCerbo.Verbo.t,
    prekondicio: nil,
    postkondicio: nil,
  }
end