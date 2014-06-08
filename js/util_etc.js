// Generated by CoffeeScript 1.7.1
var Util_Etc;

Util_Etc = (function() {
  function Util_Etc() {}

  Util_Etc.prototype.col2ary = function(col) {
    var ary, e, enums;
    enums = new Enumerator(col);
    ary = [];
    enums.moveFirst();
    while (!enums.atEnd()) {
      e = enums.item();
      ary.push(e);
      enums.moveNext();
    }
    return ary;
  };

  return Util_Etc;

})();