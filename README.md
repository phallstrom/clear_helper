# ClearHelper

[![Gem Version](https://badge.fury.io/rb/clear_helper.png)](http://badge.fury.io/rb/clear_helper)

ClearHelper is a simple method helper to make creating a "cleared" div
simple and consistent across platforms.  You can specify whether you want to
clear 'both', 'left', or 'right' and set the height of the div in any unit you
want (defaults to pixels).

## Installation

Add this line to your application's Gemfile:

    gem 'clear_helper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install clear_helper

## Usage

    <%= clear %>
    <div style="clear:both; height: 0; max-height: 0; line-height: 0;">&nbsp;</div>

    <%= clear(:left) %>
    <div style="clear:left; height: 0px; max-height: 0px; line-height: 0px;">&nbsp;</div>

Failure to specify the unit for the height will default to 'px'.

    <%= clear(:right, 10) %>
    <div style="clear:left; height: 10px; max-height: 10px; line-height: 10px;">&nbsp;</div>

If the first value is not one of 'both', 'left', or 'right' it will be assumed to be the height
and will default to 'both'.

    <%= clear('2.5em') %>
    <div style="clear:both; height: 2.5em; max-height: 2.5em; line-height: 2.5em;">&nbsp;</div>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
