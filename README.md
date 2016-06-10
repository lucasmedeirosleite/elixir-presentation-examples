Elixir presentation examples
====

To run the counter.ex example you can do:

```elixir
elixir -r counter.ex -e "Chain.run(1_000)"
```

To run with a different erlang machine proccess limit configuration:

```elixir
elixir --erl "+P 1000000" -r counter.ex -e "Chain.run(1_000_000)"
```
