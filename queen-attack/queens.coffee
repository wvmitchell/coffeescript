class Queens

  constructor: (init={}) ->
    @white = if init.hasOwnProperty('white') then init['white'] else [0, 3]
    @black = if init.hasOwnProperty('black') then init['black'] else [7, 3]
    throw "Queens cannot share the same space" if equalArrays(@white, @black)

  toString: ->
    board = blankBoard()
    board[@white[1]][@white[0]] = 'W'
    board[@black[1]][@black[0]] = 'B'
    board.join("\n").replace(/,/g, " ")

  canAttack: ->
    rowAttack(@white, @black) ||
    colAttack(@white, @black) ||
    diaAttack(@white, @black)

  rowAttack = (white, black) ->
    white[0] == black[0]


  colAttack = (white, black) ->
    white[1] == black[1]

  diaAttack = (white, black) ->
    Math.abs(white[0] - black[0]) == Math.abs(white[1] - black[1])

  blankBoard = ->
    board = []
    for i in [0..7]
      board[i] = []
      for j in [0..7]
        board[i].push 'O'
    board

  equalArrays = (first, second) ->
    first.length == second.length and first.every (elem, i) -> elem is second[i]

module.exports = Queens
