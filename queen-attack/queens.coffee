class Queens

  constructor: (init={}) ->
    @white = if init.hasOwnProperty('white') then init['white'] else [0, 3]
    @black = if init.hasOwnProperty('black') then init['black'] else [7, 3]
    throw "Queens cannot share the same space" if ("#{@white}" is "#{@black}")

module.exports = Queens
