#EJERCICIO 5 DEL TALLER

defmodule Main do
  def main do
    lista = [%{cliente: "Jorge", dias: 36},
    %{cliente: "Buba", dias: 35},
    %{cliente: "Tristo", dias: 4},
    %{cliente: "Negro", dias: 15}]

    sumar_dias(lista)

  end

  def sumar_dias(lista), do: sumar_dias(lista, 0)

  def sumar_dias([], acc) do
    IO.puts("El numero total de dias reservados es: #{acc}")
  end

  def sumar_dias([h | t], acc) do
    sumar_dias(t, acc + h.dias)
  end

end

Main.main()
