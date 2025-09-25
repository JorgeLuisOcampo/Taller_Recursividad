#EJERCICIO 8 DEL TALLER
defmodule Main do

  def main do
    pedidos = [
      %{producto: "Manzanas", cantidad: 5},
      %{producto: "Peras", cantidad: 3},
      %{producto: "Bananas", cantidad: 7}
    ]

    total = total_productos(pedidos)
    IO.puts("Cantidad total de productos pedidos: #{total}")
  end

  def total_productos(lista) do
    total_productos(lista, 0)
  end

  # Caso base: lista vacía → devolver acumulado
  def total_productos([], acc), do: acc

  # Caso recursivo: sumar la cantidad del primer mapa al acumulador
  def total_productos([%{cantidad: c} | t], acc) do
    total_productos(t, acc + c)
  end

end

Main.main()
