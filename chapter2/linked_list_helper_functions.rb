class Node
  attr_accessor :next_node, :data

  def initialize(data)
    @data = data
    @next_node = nil
  end

  def add_node_to_tail(data)
    end_node = Node.new(data)
    puts "#{self}"
    n = self

    while (n.next_node != nil) do
      n = n.next_node
    end

    n.next_node = end_node
  end

  def delete_node(data)
    n = self
    if n.data == data
      self.replace(n.next_node)
    end

    while !n.next_node.nil? do
      if n.next_node.data == data
        n.next_node = n.next_node.next_node
      end
      n = n.next_node
    end
  end

  def print_list
    n = self
    i = 1
    while (n != nil) do
      puts "Item #{i}: (#{n.data})"
      n = n.next_node
      i += 1
    end
  end

  def length
    n = self
    l = 1
    while !n.next_node.nil?
      l += 1
      n = n.next_node
    end
    return l
  end
end

def build_list(array)
  if array.length < 1
    return nil
  elsif array.length == 1
    return Node.new(array[0])
  else
    list = Node.new(array[0])
    array.each_with_index do |item, i|
      if i > 0
        list.add_node_to_tail(item)
      end
    end
  return list
  end
end
