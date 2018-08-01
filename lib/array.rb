class Array
  def my_uniq
    result = []
    self.each do |el|
      result << el unless result.include?(el)
    end
    result
  end

  def two_sum
    result = []
    self.length.times do |i|
      (i+1..self.length-1).each do |j|
        result << [i,j] if self[i] + self[j] == 0
      end
    end
    result
  end

  def my_transpose
    result = Array.new(self[0].length) {[]}
    self.each do |row|
      row.each_index do |idx|
        result[idx] << row[idx]
      end
    end
    result
  end
end

def stock_picker(arr)

  best_diff = 0
  result = nil
  arr.length.times do |i|
    (i+1..arr.length-1).each do |j|
      diff = arr[j] - arr[i]
      if diff > best_diff
        best_diff = diff
        result = [i,j]
      end
    end
  end
  result
end
