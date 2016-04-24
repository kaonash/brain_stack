ExUnit.start

Mix.Task.run "ecto.create", ~w(-r BrainStack.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r BrainStack.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(BrainStack.Repo)

