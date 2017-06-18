module AnotherOne
  class Counter
    def initialize
      initialize_backend
    end

    def increment_by(key, amount)
      @keys[key] += amount
    end

    def increment(key)
      increment_by(key, 1)
    end

    def decrement(key)
      increment_by(key, -1)
    end

    def count_for(key)
      @keys[key]
    end

    private
    def initialize_backend
      @keys = Hash.new(0)
    end
  end
end