# MemoryLogr

Log memory consumption of ruby methods on \*nix operating systems.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'memory_logr'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install memory_logr

## Usage

```ruby
def foo_bar
  # do some cool stuff...
end

log_memory do
  foo_bar
end
```

**expected output:**

```shell
[MemoryLogr] Start time: 2018-05-04 10:00:00 -0700
[MemoryLogr] Resident memory size: 3.224Mb
[MemoryLogr] Resident memory size: 3.224Mb
[MemoryLogr] Resident memory size: 3.224Mb
[MemoryLogr] Resident memory size: 3.224Mb

...

[MemoryLogr] Resident memory size: 3.224Mb
[MemoryLogr] Resident memory size: 3.224Mb
[MemoryLogr] Completed in: 2 minutes
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/frankolson/memory_logr. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the MemoryLogr project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/frankolson/memory_logr/blob/master/CODE_OF_CONDUCT.md).
