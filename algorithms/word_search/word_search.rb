# @param {Character[][]} board
# @param {String} word
# @return {Boolean}
def exist(board, word)
  i, row = 0, board.length
  while i < row
    j, col = 0, board[i].length
    while j < col
      return true if search(board, i, j, word, 0)
      j += 1
    end
    i += 1
  end
  return false
end
    
def search(board, i, j, word, index)
  return true if index >= word.length
  return false if i < 0 || i >= board.length
  return false if j < 0 || j >= board[0].length
  return false if board[i][j] != word[index]
  tmp = board[i][j]
  board[i][j] = '#'
  res = search(board, i-1, j, word, index+1) || search(board, i+1, j, word, index+1) || search(board, i, j-1, word, index+1) || search(board, i, j+1, word, index+1)
  board[i][j] = tmp
  return res
end
