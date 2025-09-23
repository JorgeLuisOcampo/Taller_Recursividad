#EJERCICIO 4 DEL TALLER

defmodule Main do
  def main do
    lista = [1, "a", 3.2, "Z", {5,6}]
    buscar_en_lista(lista)

  end

  def buscar_en_lista(lista) do
    buscar_en_lista(lista, 3.2)
  end

  def buscar_en_lista([], _x), do: IO.puts(false)
  def buscar_en_lista([h | _t], x) when h == x, do: IO.puts(true)
  def buscar_en_lista([_h | t], x), do: buscar_en_lista(t, x)



end

Main.main()
