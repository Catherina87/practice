
def tic_tac_toe(moves)
  a_moves = []
  b_moves = []

  winning_conditions = [
    [[0,0],[0,1],[0,2]],
    [[1,0],[1,1],[1,2]],
    [[2,0],[2,1],[2,2]],
    [[0,0],[1,0],[2,0]],
    [[0,1],[1,1],[2,1]],
    [[0,2],[1,2],[2,2]],
    [[0,0],[1,1],[2,2]],
    [[0,2],[1,1],[2,0]]
  ]

  moves.each_with_index do |move, index|
    if index % 2 == 0
      a_moves << move 
    else
      b_moves << move 
    end
  end

  winning_conditions.each do |winning_cond|
    if (winning_cond & a_moves).length == 3
      return "Player A"
    elsif (winning_cond & b_moves).length == 3
      return "Player B"
    end
  end

  return moves.length == 9 ? "Draw" : "Pending"
end
