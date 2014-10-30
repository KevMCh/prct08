Cell = Struct.new(:value, :next)


list = Cell.new(2,nil)


def linked_list(value, cell)
  return Cell.new(value, cell)
end


def recursive_print(list)
  p list.value
  recursive_print(list.next) unless list.next == nil
end



i = 0
10.times {
  i += 1
  list = linked_list(i, list)
}

recursive_print(list) 
