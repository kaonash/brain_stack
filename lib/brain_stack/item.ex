defmodule BrainStack.Item do
  defstruct [title: String, text: String]

  @spec new(Stirng.t, String.t) :: Item.t
  def new(title, text) do
    %BrainStack.Item{title: title, text: text}
  end
end
