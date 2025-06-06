# MobyNames

This is a Ruby port of the Moby [namesgenerator](https://github.com/moby/moby/tree/master/pkg/namesgenerator) package.

## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add moby_names
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install moby_names
```

## Usage

```ruby
MobyNames.random_name
```

This will return a random name, for example "happy_agnesi"

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tinco/moby_names. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/tinco/moby_names/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [Apache License, Version 2.0](https://www.apache.org/licenses/LICENSE-2.0).

## Code of Conduct

Everyone interacting in the MobyNames project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/tinco/moby_names/blob/main/CODE_OF_CONDUCT.md).
