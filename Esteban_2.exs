#EJERCICIO 6 DEL TALLER
defmodule Main do

  def main do
    resultado = potencia(5, 3)
    IO.puts("Resultado: #{resultado}")  # Debería imprimir 32
  end
  
  def potencia(_base, 0), do: 1

  def potencia(base, exponente) do
    base * potencia(base, exponente - 1)
  end

end

Main.main()
