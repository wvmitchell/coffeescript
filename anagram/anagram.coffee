class Anagram

  constructor: (@word) ->
  match: (potentialMatches) ->
    matches = (pm for pm in potentialMatches when anagram(pm, @word))

  anagram = (first, second) ->
    sorted(first) == sorted(second) && first != second

  sorted = (word) ->
    word.split('').sort().join('')

module.exports = Anagram
