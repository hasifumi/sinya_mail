// Generated by CoffeeScript 1.7.1
var Util_Etc, Util_File;

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

Util_File = (function() {
  function Util_File() {
    this.fso = new ActiveXObject("Scripting.FileSystemObject");
    this.ue = new Util_Etc();
  }

  Util_File.prototype.echo = function(text) {
    WScript.Echo("" + text);
  };

  Util_File.prototype.createFileList = function(inFolderName) {
    var e1, file, fsoFolder, result;
    if (!this.fso.FolderExists("" + inFolderName)) {
      return [];
    }
    WScript.Echo("" + inFolderName + " exists!");
    result = [];
    fsoFolder = this.fso.GetFolder("" + inFolderName);
    e1 = new Enumerator(fsoFolder.Files);
    e1.moveFirst();
    while (!e1.atEnd()) {
      file = e1.item();
      result.push(file);
      e1.moveNext();
    }
    return result;
  };

  return Util_File;

})();
