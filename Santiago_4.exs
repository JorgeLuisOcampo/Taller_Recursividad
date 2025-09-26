#pregunta 11
defmodule Main do

  def main() do
    sumar_Matriz([[1,2,3],
                  [3,2,1],
                  [1,2,3]])
  end
  def sumar_Matriz(matriz) do
    suma = 0
    sumar_Matriz(matriz, suma)
  end
  def sumar_Matriz([], suma) do
    IO.puts("el resultado de la suma es: #{suma}")
  end
  def sumar_Matriz([head | tail], suma) do
    sumar_fila(head, tail, suma)
  end
  def sumar_fila([], tail, suma) do
    sumar_Matriz(tail, suma)
  end
  def sumar_fila([h | t], tail, suma) do
    sumar_fila(t, tail, suma + h)
  end

end
Main.main()
