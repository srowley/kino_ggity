defimpl Kino.Render, for: GGity.Plot do
  def to_livebook(plot) do
    plot
    |> GGity.Plot.plot()
    |> to_string()
    |> Kino.Image.new(:svg)
  end
end

defmodule GGity.Kino do
  def render(plot) do
    Kino.Render.to_livebook(plot)
  end
end
