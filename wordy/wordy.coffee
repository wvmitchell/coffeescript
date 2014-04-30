class WordProblem

  constructor: (@question) ->
    numbers = @question.match(/-?\d+/g)
    operations = @question.match(/plus/g)
    @commandList = build(numbers, operations)

  answer: ->
    eval @commandList.join(' ')

  build = (numbers, operations) ->
    result = []
    for num, i in numbers
      op = operations[i]
      result.push num
      result.push parsed(op) unless typeof(op) is 'undefined'
    result

  parsed = (operation) ->
    switch operation
      when 'plus' then '+'
      else ''


module.exports = WordProblem
