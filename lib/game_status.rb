# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS =[
[0,1,2], [3,4,5], [6,7,8],
[0,3,6], [1,4,7], [2,5,8],
[0,4,8], [2,4,6]
]

def won?(board)
  index = 0

  while (index<8)
    countX = 0
    countO = 0

    WIN_COMBINATIONS[index].each do |combinations|

      if (board[combinations] == "X")
        countX+=1
      elsif (board[combinations] == "O")
        countO+=1
      end

    end

    index+=1

      if (countX == 3 || countO == 3)
        return WIN_COMBINATIONS[index-1]
      elsif (index<8)
        next
      else
        return false
      end

  end

end


def full?(board)

  index = 0
  count = 0

  while (index<9)

    if (board[index] == " ")
      count+=1
    end

    index+=1
  end

  if (count>0)
    return false
  else
    return true
  end

end

def draw?(board)
  func1 = won?(board)
  func2 = full?(board)

  if (func1 == false && func2 == false)
    return true
  end
end
