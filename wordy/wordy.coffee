class WordProblem

  constructor: (@question) ->
    numbers = @question.match(/-?\d+/g)
    operations = @question.match(/(plus|minus|multiplied|divided|cubed)/g)
    @commandList = build(numbers, operations)

  answer: ->
    if (@commandList.indexOf('error') != -1) || (@commandList.length == 0)
      throw @ERROR.tooComplicated
    len = @commandList.length
    eval (eval @commandList[0..2].join(' ')).toString() +
    " " +
    @commandList[3..len-1].join(' ')

  ERROR:
    tooComplicated: 'error'

  build = (numbers, operations) ->
    result = []
    unless numbers && operations
      return result
    for num, i in numbers
      op = operations[i]
      result.push num
      result.push parsed(op) unless typeof(op) is 'undefined'
    result

  parsed = (operation) ->
    switch operation
      when 'plus' then '+'
      when 'minus' then '-'
      when 'multiplied' then '*'
      when 'divided' then '/'
      else 'error'



module.exports = WordProblem
