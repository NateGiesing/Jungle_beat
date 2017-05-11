require "minitest/autorun"
require "minitest/pride"
require "./lib/node"

class NodeTest < Minitest::Test

  def test_if_it_makes_sound
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_next_node_equal_nil_when_one_node_exist
    node = Node.new("plop")
    #binding.pry
    assert_nil node.next_node
  end
end
