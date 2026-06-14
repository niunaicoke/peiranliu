# Compatibility shim for running the older GitHub Pages/Jekyll stack on Ruby 4.
unless Object.method_defined?(:tainted?)
  class Object
    def tainted?
      false
    end
  end
end

unless Object.method_defined?(:untaint)
  class Object
    def untaint
      self
    end
  end
end
