```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    # Handle method calls dynamically
    if method_name == :value
      return @value
    else
      puts "Method '#{method_name}' called with args: #{args.inspect}"
    end
  end

end

obj = MyClass.new(10)
obj.some_method(1, 2, 3) # This works fine
obj.another_method # This also works
puts obj.value # Output: 10
```