#EJERCICIO 7 DEL TALLER

defmodule Main do
  def main do
    lista = [1,2,3,4,5,6,7,8,9,10]

    sumar_pares(lista)

  end

  def sumar_pares(lista), do: sumar_pares(lista, 0)

  def sumar_pares([], acc) do
    IO.puts("La suma total de numeros pares es: #{acc}")
  end

  def sumar_pares([h | t], acc) when rem(h,2) == 0, do: sumar_pares(t, acc + h)
  def sumar_pares([_h | t], acc), do: sumar_pares(t, acc)

end

Main.main()
