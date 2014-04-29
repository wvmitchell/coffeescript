class Anagram

  constructor: (word) ->
    @word = word.toLowerCase()

  match: (potentialMatches) ->
    matches = (pm.toLowerCase() for pm in potentialMatches when anagram(pm, @word))

  anagram = (first, second) ->
    first = first.toLowerCase()
    sorted(first) == sorted(second) && first != second

  sorted = (word) ->
    word.split('').sort().join('')

module.exports = Anagram
