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

  each: (collect) ->
    if @left == null
      collect(@data)
    else
      @left.each(collect) + collect(@data)

module.exports = Bst
