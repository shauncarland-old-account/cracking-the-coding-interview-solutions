load 'linked_list_helper_functions.rb'

def remove_duplicate_elements(list)
  if list.length < 2
    return list
  end

  seen_elements = []
  n = list
  i = 0
  previous_node = nil

  while !n.next_node.nil? do
    data = n.data
    # we haven't seen this element
    if !seen_elements.include?(data)
      seen_elements << data
    #we've seen this before
    else
      previous_node.next_node = n.next_node
    end
    previous_node = n
    n = n.next_node
  end
  return list
end


list = build_list(['a','b','a','c'])
list.print_list
# Item 1: (a)
# Item 2: (b)
# Item 3: (a)
# Item 4: (c)

list = remove_duplicate_elements(list)
list.print_list
# Item 1: (a)
# Item 2: (b)
# Item 3: (c)
