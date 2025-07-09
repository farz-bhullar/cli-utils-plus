# CLIUtils [![Gem Version](https://badge.fury.io/rb/cli_utils.svg)](https://badge.fury.io/rb/cli_utils)

A lightweight Ruby gem with helpful CLI utilities — input prompts, spinners, logger, and colored output.

## Requirements

- Ruby 3.0+
- No external dependencies

## Installation

```bash
gem install cli_utils
```

Or add to your Gemfile:

```ruby
gem 'cli_utils', path: './cli_utils'
```

## Usage

```ruby
require 'cli_utils'

# Prompt
name = CLIUtils::Prompt.ask("What is your name?", "Guest")
puts "Hello, #{name}!"

# Confirm
proceed = CLIUtils::Prompt.confirm?("Continue?")

# Spinner
spinner = CLIUtils::Spinner.new("Working")
thread = spinner.start
sleep 2 # simulate work
spinner.stop

# Logging
CLIUtils::Logger.log_info("Task completed")
CLIUtils::Logger.log_error("Something went wrong")

# Color
puts CLIUtils::Color.colorize("This is red text", :red)
```