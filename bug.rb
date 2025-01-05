```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    # Handle method calls dynamically
    puts "Method '#{method_name}' called with args: #{args.inspect}"
  end

end

obj = MyClass.new(10)
obj.some_method(1, 2, 3) # This works fine
obj.another_method # This also works
obj.value # NoMethodError: undefined method `value' for #<MyClass:0x00007f8b978b87a0>
```