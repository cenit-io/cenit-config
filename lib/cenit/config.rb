require 'cenit/config/version'

module Cenit

  module Config

    def options
      @options ||= default_options
    end

    def default_options
      {}
    end

    def [](option)
      (value = options[option]).respond_to?(:call) ? value.call : value
    end

    def []=(option, value)
      options[option] = value
    end

    def config(&block)
      class_eval(&block) if block
    end

    def respond_to?(*args)
      super || options.has_key?(args[0])
    end

    def method_missing(symbol, *args)
      if !symbol.to_s.end_with?('=') && ((args.length == 0 && block_given?) || args.length == 1 && !block_given?)
        self[symbol] = block_given? ? yield : args[0]
      elsif args.length == 0 && !block_given?
        self[symbol]
      else
        super
      end
    end
  end

  extend Config
end
