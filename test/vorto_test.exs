defmodule NajdiraCerboTest.Vorto do
  use ExUnit.Case
  alias NajdiraCerbo.Vorto
  alias NajdiraCerbo.Substantivo

  test "Testoj de S1 tipo" do
    assert Vorto.tipo("lirana") == :substantivo
    assert Vorto.tipo("silimanarAka") == :substantivo
  end

  test "Testoj de S1 formo" do
    assert Substantivo.formo("lirana") == :s1
  end

  test "Nevalidaj" do
    assert Vorto.tipo("ana") == :nevalida
    assert Vorto.tipo("amo") == :nevalida
  end
end
