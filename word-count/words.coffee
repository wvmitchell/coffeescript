class Words

  constructor: (phrase) ->
    @count = countWords(phrase)

  countWords = (phrase) ->
    words = phrase.split(" ")
    results = {}
    for word in words
      if results[word] then results[word] += 1 else results[word] = 1
    results

module.exports = Words
