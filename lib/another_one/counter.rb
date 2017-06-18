require 'forwardable'
module AnotherOne
  class Counter
    extend Forwardable

    def_delegator :@backend, :increment_by, :increment_by
    def_delegator :@backend, :count_for, :count_for

    def initialize(backend: nil)
      @backend = backend
      initialize_backend
    end

    def increment(key)
      increment_by(key, 1)
    end

    def decrement(key)
      increment_by(key, -1)
    end

    private
    def initialize_backend
      @backend ||= AnotherOne::Backends::Hash.new
    end
  end
end