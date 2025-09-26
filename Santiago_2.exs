# pregunta 9
defmodule Main do
  def main() do
    IO.inspect(permutar([1, 2, 3, 4]))
  end

  def permutar([]), do: [[]]

  def permutar(lista) do
    permutar_lista(lista, [])
  end

  defp permutar_lista([], _), do: []

  defp permutar_lista([h | t], left) do
    rest = left ++ t
    resultado = insertar_en_cada(h, permutar(rest))
    resultado ++ permutar_lista(t, left ++ [h])
  end

  defp insertar_en_cada(_, []), do: []

  defp insertar_en_cada(elem, [head | tail]) do
    [[elem | head] | insertar_en_cada(elem, tail)]
  end
end

Main.main()
