#pregunta 10
defmodule Main do
  def main() do
    arbol = %{
      valor: 5,
      izquierda: %{
        valor: 4,
        izquierda: %{
          valor: 11,
          izquierda: %{valor: 7, izquierda: nil, derecha: nil},
          derecha: %{valor: 2, izquierda: nil, derecha: nil}
        },
        derecha: nil
      },
      derecha: %{
        valor: 8,
        izquierda: %{valor: 13, izquierda: nil, derecha: nil},
        derecha: %{
          valor: 4,
          izquierda: nil,
          derecha: %{valor: 1, izquierda: nil, derecha: nil}
        }
      }
    }

    objetivo = 22
    rutas = rutas_con_suma(arbol, objetivo)
    IO.inspect(rutas, label: "Rutas con suma #{objetivo}")
  end


  def rutas_con_suma(nil, _objetivo), do: []

  def rutas_con_suma(arbol, objetivo) do
    buscar_rutas(arbol, objetivo, [], [])
  end


  defp buscar_rutas(nil, _restante, _ruta, acumulado), do: acumulado


  defp buscar_rutas(%{valor: valor, izquierda: nil, derecha: nil}, restante, ruta, acumulado) do
    nueva_ruta = ruta ++ [valor]

    if restante == valor do
      [nueva_ruta | acumulado]
    else
      acumulado
    end
  end

  defp buscar_rutas(%{valor: valor, izquierda: izq, derecha: der}, restante, ruta, acumulado) do
    nueva_ruta = ruta ++ [valor]
    restante_actualizado = restante - valor

    acumulado_izq = buscar_rutas(izq, restante_actualizado, nueva_ruta, acumulado)
    buscar_rutas(der, restante_actualizado, nueva_ruta, acumulado_izq)
  end
end

Main.main()
