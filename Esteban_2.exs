#EJERCICIO 6 DEL TALLER
defmodule Main do

  def main do
    resultado = potencia(5, 3)
    IO.puts("Resultado: #{resultado}")  # Debería imprimir 32
  end

  # Caso base: cualquier número elevado a 0 es 1
  def potencia(_base, 0), do: 1

  # Caso recursivo: base^exponente = base * base^(exponente - 1)
  def potencia(base, exponente) do
    base * potencia(base, exponente - 1)
  end

end

Main.main()
