# Byar

Byar's approximation calculator in Ruby. Useful when working with (H)SMR mortality models used in hospitals worldwide.

## Usage

  * `gem install byar`
  * `require 'byar'` inside your Ruby project
  * Use `Byar.lower(observed, expected)` and `Byar.upper(observed, expected)` to get 95% Byar confidence intervals.
  
Caution: 1 is used as reference point for cases where observed == expected, not 100!

## License

Byar is released under the [MIT License](./LICENSE.txt).
