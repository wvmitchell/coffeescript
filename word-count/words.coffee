class Words

  constructor: (phrase) ->
    cleaned = clean(phrase) #phrase.replace /[^a-zA-Z ]/g, ""
    @count = countWords(cleaned)

  countWords = (phrase) ->
    words = phrase.split(" ")
    results = {}
    for word in words
      if results[word] then results[word] += 1 else results[word] = 1
    results

  clean = (phrase) ->
    cleaned = phrase.replace /[^a-zA-Z ]/g, ""
    cleaned = cleaned.replace /\s{2,}/g, " "

module.exports = Words
