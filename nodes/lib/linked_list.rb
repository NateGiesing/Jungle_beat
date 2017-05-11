require "./lib/node.rb"
require "pry"
class LinkedList
    attr_reader :head
                :count

    def initialize
      @head  = nil
      @bag_of_strings = []
      #@newest_node = newest_node
    end

    def append(data)
      @bag_of_strings << data
      if head.nil?
        @head = Node.new(data)
      else
        @head.next_node = Node.new(data)
      end
      data
    end

    def prepend(data)
      @bag_of_strings.insert(0, data)
      old_nodes = @head
      @head = Node.new(data)
      @head.next_node = old_nodes
      data
    end

    # def insert(position, data)
    #   @bag_of_strings.insert(position, data)
    # end


    def count
      @bag_of_strings.count
    end

    def to_string
      @bag_of_strings.join(" ")
    end
end
