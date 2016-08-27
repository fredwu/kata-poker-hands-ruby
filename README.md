# PokerHands

Read [requirements](REQUIREMENTS.md) for details about the kata. An Elixir version can be found [here](https://github.com/fredwu/kata-poker-hands-elixir).

## Dev Environment

- Ruby 2.3.1

## Usage

```
bundle install
```

Start the irb console:

```
bin/console
```

Use `PokerHands.vs` to compare two hands:

```ruby
PokerHands.vs('2H 3D 5S 9C KD', '2C 3H 4S 8C KH')
#=> "Left wins!"
```

## Notes

Data validation is intentionally left out.

## License

Licensed under [MIT](http://fredwu.mit-license.org/).
