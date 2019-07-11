defmodule NajdiraCerbo.Verbo do
  defstruct verbo: nil,
    nominativo: nil,
    akuzativo: nil,
    dativo: nil,
    lokativo: nil,
    lativo: nil,
    instrumentalo: nil,
    esivo: nil
  @type t :: %NajdiraCerbo.Verbo{
    verbo: NajdiraCerbo.Vorto.t,
    nominativo: NajdiraCerbo.Substantivo.t,
    akuzativo: NajdiraCerbo.Substantivo.t,
    dativo: NajdiraCerbo.Substantivo.t,
    lokativo: NajdiraCerbo.Substantivo.t,
    lativo: NajdiraCerbo.Substantivo.t,
    instrumentalo: NajdiraCerbo.Substantivo.t,
    esivo: NajdiraCerbo.Substantivo.t,
  }
end