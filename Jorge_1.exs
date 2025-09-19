defmodule Main do

  def main do
    lista = [1, "a", 3.2, "Z", {5,6}]
    contar_elementos(lista)

  end

  def contar_elementos(lista) do
    contar_elementos(lista, 0)
  end

  def contar_elementos([], acc) do
    IO.puts(acc)
  end

  def contar_elementos(lista, acc) do
    [h | t] = lista
    contar_elementos(t, acc + )


  end




end
