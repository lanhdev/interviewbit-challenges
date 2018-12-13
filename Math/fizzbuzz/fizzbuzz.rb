# https://www.interviewbit.com/problems/fizzbuzz

class Solution
  # @param a : integer
  # @return an array of strings
  def fizzBuzz(a)
    res = []
    1.upto(a).each do |num|
      if num % 3 == 0 && num % 5 == 0
        res.push('FizzBuzz')
      elsif num % 3 == 0
        res.push('Fizz')
      elsif num % 5 == 0
        res.push('Buzz')
      else
        res.push(num)
      end
    end
    res
  end
end

class Solution
  # @param a : integer
  # @return an array of strings
  def fizzBuzz(a)
    (1..a).map do |n|
      str = ''
      str += 'Fizz' if n % 3 == 0
      str += 'Buzz' if n % 5 == 0
      str.empty? ? n : str
    end
  end
end

a = 5
p Solution.new.fizzBuzz(a)
