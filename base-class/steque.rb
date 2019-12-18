require_relative 'linked_list.rb'
class Steque < LinkedList
  alias :push :add
  alias :pop :delete_last
  def enqueue
    self.delete(1)
  end
end

