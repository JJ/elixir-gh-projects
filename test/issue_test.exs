defmodule IssueTest do
  use ExUnit.Case
  doctest Issue

  setup_all do
    this_issue = %Issue{ projectname: 'Foo', id: '1'}
    {:ok, issue: this_issue}
  end
  
  test "Initial issue state",context do
    assert context[:issue].state == :Open
  end
end
