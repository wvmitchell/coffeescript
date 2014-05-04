class Words

  constructor: (phrase) ->
    cleaned = clean(phrase)
    @count = countWords(cleaned)

  countWords = (phrase) ->
    words = phrase.split(" ")
    results = {}
    for word in words
      if results[word] then results[word] += 1 else results[word] = 1
    results

  clean = (phrase) ->
    cleaned = phrase.replace /[^0-9a-zA-Z ]/g, ""
    cleaned = cleaned.replace /\s{2,}/g, " "
    cleaned = cleaned.toLowerCase()

module.exports = Words
