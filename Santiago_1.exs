# pregunta 1
defmodule Main do

  def main do
    calcular_fact(5)

  end
  def calcular_fact(n) when n < 0, do: IO.puts("ERROR! el numero ingresado es negativo")

  def calcular_fact(n), do: calcular_fact(n,1)

  def calcular_fact(0,cont)do
    IO.puts("el resultado del factorial es: #{cont}")
  end
  def calcular_fact(n,cont) do
    calcular_fact(n-1, cont*n )
  end

end

Main.main()
