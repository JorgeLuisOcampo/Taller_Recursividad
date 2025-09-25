#EJERCICIO 3 DEL TALLER
defmodule Main do

  def main do
    transacciones = [100, -50, 25, -10, 40]
    balance(transacciones)
  end

  def balance(lista) do
    balance(lista, 0)
  end

  def balance([], acc) do
    IO.puts("Balance final: #{acc}")
  end

  def balance([h | t], acc) do
    balance(t, acc + h)
  end

end

Main.main()
