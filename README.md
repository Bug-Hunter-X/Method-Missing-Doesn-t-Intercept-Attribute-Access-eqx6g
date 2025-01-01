# Ruby Method Missing Bug

This repository demonstrates a subtle bug related to Ruby's `method_missing` method. While `method_missing` effectively intercepts calls to undefined methods, it does *not* intercept direct access to instance variables.

This can lead to unexpected `NoMethodError` exceptions even when you've implemented `method_missing` to handle missing methods gracefully.

The `bug.rb` file shows the problematic code, and `bugSolution.rb` provides a solution.