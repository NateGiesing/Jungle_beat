require "minitest/autorun"
require "minitest/pride"
require "./lib/linked_list"

class LinkedListTest < Minitest::Test

  def test_head_is_nil
    list = LinkedList.new
    assert_nil list.head
  end

  def test_adds_a_node
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.head.data
  end

  def test_append_set_head_to_new_node
    list = LinkedList.new
    list.append("doop")
    assert_equal Node, list.head.class
  end

  def test_next_node_equal_nil_when_one_node_exist
    list = LinkedList.new

    list.append("doop")
    assert_nil list.head.next_node
  end

  def test_next_node_creates_an_object
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal Node, list.head.next_node.class
  end

  def test_list_can_count
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_equal 2, list.count
  end

  def test_list_can_turn_into_a_string
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_equal "doop deep", list.to_string
  end

  def test_prepending_will_output_data
    list = LinkedList.new

    assert_equal "dop", list.prepend("dop")
  end

  def test_prepending_add_string_to_front
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    assert_equal "dop plop suu", list.to_string
  end

  def test_prepending_creates_node_at_the_front
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    assert_equal "dop", list.head.data
  end

  def test_prepending_creates_node_at_the_front_and_doesnt_destroy_old_nodes
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    assert_equal "plop", list.head.next_node.data
  end

  def test_prepending_doesnt_ruin_count
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    # require "pry"; binding.pry
    assert_equal 3, list.count
  end
end
