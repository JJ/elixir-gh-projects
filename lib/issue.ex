defmodule Issue do
  @moduledoc """
  A simple issue in a repository
  """
  @enforce_keys [:projectname, :id]
  defstruct [:projectname, :id, state: :Open ]
  
  @doc """
  Can create and close it, and that's it

  """
  def close( issue ) do 
    issue |> struct( %{state: :Closed} )
  end

  @doc """
  Reopens issue

  """
  def reopen( issue ) do 
    issue |> struct( %{state: :Open} )
  end

end
