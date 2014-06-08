class Util_Etc
  col2ary:(col) ->
    enums = new Enumerator(col)
    ary = []
    enums.moveFirst()
    while !enums.atEnd()
      e = enums.item()
      ary.push(e)
      enums.moveNext()
    return ary
