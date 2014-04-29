class Beer

  @verse: (num) ->
    if num == 1 then lastVerse() else regularVerse(num)

  regularVerse = (num) ->
    """
    #{num} bottles of beer on the wall, #{num} bottles of beer.
    Take one down and pass it around, #{num - 1} bottles of beer on the wall.
    """

  lastVerse = ->
    """
    1 bottle of beer on the wall, 1 bottle of beer.
    Take it down and pass it around, no more bottles of beer on the wall.
    """


module.exports = Beer
