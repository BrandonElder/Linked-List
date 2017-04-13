require 'spec_helper'

RSpec.describe LinkedListNode, type: :model do
  describe 'linked list' do
    it 'should show a linked list' do
      expected = "12 --> 99 --> 37 --> nil\n"

      node1 = LinkedListNode.new(37)
      node2 = LinkedListNode.new(99, node1)
      node3 = LinkedListNode.new(12, node2)
      expect {print_values(node3)}.to output(expected).to_stdout
    end
  end
end
