module Assistant
  class Queue
    def initialize
      @data = []
    end

    def enqueue(element)
      @data.push(element)
    end

    def dequeue
      @data.shift
    end

    def empty?
      @data.empty?
    end
  end

  class Stack
    def initialize
      @data = []
    end

    def push(element)
      @data.push(element)
    end

    def peek
      @data.first
    end

    def pop
      @data.pop
    end

    def empty?
      @data.empty?
    end
  end
end