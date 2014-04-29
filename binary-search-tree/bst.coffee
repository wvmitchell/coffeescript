class Bst

  constructor: (@data, @left=null, @right=null) ->

  insert: (num) ->
    if num <= @data
      if @left == null 
        @left = new Bst(num)
      else
        @left.insert(num)

module.exports = Bst
