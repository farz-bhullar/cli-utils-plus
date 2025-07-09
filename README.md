# CLIUtils Plus [![Gem Version](https://badge.fury.io/rb/cli_utils_plus.svg)](https://badge.fury.io/rb/cli_utils_plus)

A lightweight Ruby gem with helpful CLI utilities — input prompts, spinners, logger, and colored output.

## Requirements

- Ruby 3.0+
- No external dependencies

## Installation

```bash
gem install cli_utils_plus
```

Or add to your Gemfile:

```ruby
gem 'cli_utils_plus', path: './cli_utils_plus'
```

## Usage

```ruby
require 'cli_utils_plus'

# Prompt
name = CLIUtilsPlus::Prompt.ask("What is your name?", "Guest")
puts "Hello, #{name}!"

# Confirm
proceed = CLIUtilsPlus::Prompt.confirm?("Continue?")

# Spinner
spinner = CLIUtilsPlus::Spinner.new("Working")
thread = spinner.start
sleep 2 # simulate work
spinner.stop

# Logging
CLIUtilsPlus::Logger.log_info("Task completed")
CLIUtilsPlus::Logger.log_error("Something went wrong")

# Color
puts CLIUtilsPlus::Color.colorize("This is red text", :red)
```