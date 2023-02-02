require 'pry'


class BoardCase
    attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3, :case_id, :sign

    def initialize(case_id, sign)
      @sign = sign
      case_id = "@#{case_id}"  
      self.instance_variable_set(case_id, sign) 
    end
end

# a1 = BoardCase.new("a1", "X")
# puts a1.sign