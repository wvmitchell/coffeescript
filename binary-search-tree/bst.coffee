class Bst

  constructor: (@data, @left=null, @right=null) ->

  insert: (num) ->
    if num <= @data
      if @left == null
        @left = new Bst(num)
      else
        @left.insert(num)
    else
      if @right == null
        @right = new Bst(num)
      else
        @right.insert(num)

  each: (collection) ->
    collection(@data)

module.exports = Bst
