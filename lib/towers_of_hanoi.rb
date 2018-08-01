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

  def render
    self.towers.each_with_index do |row,idx|
      row.each do |el|
        print  el.to_s
      end
      puts
    end
    ''
  end

  def won?
    return true if towers[1].size == 3 || towers[2].length == 3
    false
  end


  def get_input
    print "Enter a tower number:"
    input = gets.chomp.to_i
  end

  def play
    puts "welcome"
    until won?
      begin
      render
      from = get_input
      to = get_input
      move_discs(from,to)
      rescue
        retry
      end
    end
    puts "Congratulations, you win!"
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


if __FILE__ == $PROGRAM_NAME
  a = TowersOfHanoi.new
  a.play
end
