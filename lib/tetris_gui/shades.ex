defmodule TetrisGui.Shades do
  @type t :: %TetrisGui.Shades{light: binary, dark: binary}
  defstruct light: "", dark: ""
end
