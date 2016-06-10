defmodule Math do
  defmodule Result do
    defstruct [:value, :result]
  end

  def factorial(n) when n <= 0 do
    "Invalid value"
  end
  def factorial(n) do
    %Math.Result{ value: n, result: do_factorial(n) }
  end

  defp do_factorial(1), do: 1
  defp do_factorial(n) do
    n * do_factorial(n-1)
  end

  def collection_factorial_sum(array) do
    array
    |> Enum.map(fn (element) ->
      factorial(element)
    end)
    |> Enum.reduce(0, fn (element, accumulator) ->
      accumulator + element.result
    end)
  end
end
