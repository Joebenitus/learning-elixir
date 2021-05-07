defmodule Servy do
  def hello(name) do
    "Waddup, #{name}!"
  end
end

IO.puts Servy.hello("Joe")
