class TowersOfHanoi
  attr_reader :towers

  def initialize
    @towers = Array.new(3) {[]}
    towers[0] = [3, 2, 1]
  end

  def move_discs(from, to)
    raise IllegalMoveError if invalid_move(from, to)
    towers[to] << towers[from].pop
  end

  

private
  def invalid_move(from, to)
    if towers[to].empty?
      return false
    elsif
      towers[from].empty?
      true
    else
      towers[to].last < towers[from].last
    end
  end
end


class IllegalMoveError < ArgumentError
end
