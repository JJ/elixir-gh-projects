defmodule Issue do
  @moduledoc """
  A simple issue in a repository
  """
  defstruct [:projectname, :id, state: :Open ]

  @enforce_keys [:state, :projectname, :id]
  
  @doc """
  Can create and close it, and that's it

  """
  def close( issue ) do 
    issue |> struct( %{state: :Closed} )
  end

end
