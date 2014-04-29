class Beer

  @verse: (num) ->
    if num == 0
      lastVerse()
    else if num == 1
      singleVerse()
    else
      regularVerse(num)

  @sing: (start, finish=0) ->
    (@verse(num) for num in [start..finish]).join("\n\n") + "\n"

  regularVerse = (num) ->
    """
    #{num} bottles of beer on the wall, #{num} bottles of beer.
    Take one down and pass it around, #{num - 1} bottles of beer on the wall.
    """

  singleVerse = ->
    """
    1 bottle of beer on the wall, 1 bottle of beer.
    Take it down and pass it around, no more bottles of beer on the wall.
    """

  lastVerse = ->
    """
    No more bottles of beer on the wall, no more bottles of beer.
    Go to the store and buy some more, 99 bottles of beer on the wall.
    """

module.exports = Beer
