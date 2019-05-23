class Array
  def my_uniq
    hash = Hash.new(0)
    self.each do |ele|
      hash[ele] += 1
    end
    hash.keys
  end

  def two_sum
    raise "InvalidTypeError" if self.any? { |el| !el.is_a?(Integer) } 
    result = []
    (0...self.length).each do |i|
      (i + 1...self.length).each do |x|
        if self[i] + self[x] == 0
          temp = []
          temp << i << x
          result << temp
        end
      end
    end
    result
  end

  def my_transpose
    raise "InvalidMatrixError" if self.length != self[0].length
    transposed = []
    (0...self.length).each do |idx|
      temp = []
      self.each do |row|
        temp << row[idx]
      end
      transposed << temp
    end
    transposed
  end

  def stock_picker
    profit = 0
    days_pair = []
    (0...self.length).each do |day_1|
      (day_1+1...self.length).each do |day_2|
        if self[day_2] - self[day_1] > profit
          profit = self[day_2] - self[day_1]
          days_pair = [day_1, day_2]
        end
      end
    end
    buy_day, sell_day = days_pair
    "The most profitable day to buy is " + buy_day.to_s + " and sell is " + 
    sell_day.to_s
  end
end