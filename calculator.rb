def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(array)
  array.empty? ? 0 : array.reduce(&:+)
end
