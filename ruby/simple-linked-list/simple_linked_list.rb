# frozen_string_literal: true

# The Element for a singly linked list
class Element
  attr_reader :datum
  attr_accessor :next

  def initialize(datum)
    @datum = datum
  end
end

# A singly linked list class
class SimpleLinkedList
  def initialize(elements = [])
    elements.each do |element|
      push(Element.new(element))
    end
  end

  def push(element)
    tmp = head
    self.head = element
    head.next = tmp

    self
  end

  def pop
    result = head
    self.head = head&.next

    result
  end

  def to_a
    result = []
    iter = head
    until iter.nil?
      result << iter.datum
      iter = iter.next
    end

    result
  end

  def reverse!
    last = head
    if head.nil?
      current = nil
    else
      current = head.next
      last.next = nil
    end
    until current.nil?
      tmp = current.next
      current.next = last
      last = current
      current = tmp 
    end

    self.head = last
    self
  end

  private

  attr_accessor :head
end
