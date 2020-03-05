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

  test "State after closing",context do
    new_issue = Issue.close(context[:issue])
    assert new_issue.state == :Closed
  end

  test "State after reopening",context do
    new_issue = Issue.reopen(context[:issue])
    assert new_issue.state == :Open
  end
end
