module AnotherOne
  module Backends
    class Hash
      def initialize
        @keys = ::Hash.new(0)
      end

      def increment_by(key, amount)
        @keys[key] += amount
      end

      def count_for(key)
        @keys[key]
      end
    end
  end
end