class Util_File
  constructor: () ->
    @fso = new ActiveXObject("Scripting.FileSystemObject")
    @ue = new Util_Etc()
    #@result = []

  echo:(text) ->
    WScript.Echo("#{text}")
    return

  createFileList:(inFolderName) ->
    #if @fso.FileExists("#{inFolderName}")
    #  return "#{inFolderName}"
    unless @fso.FolderExists("#{inFolderName}")
      return []
    WScript.Echo("#{inFolderName} exists!")
    result = []
    #result = new Array()
    fsoFolder = @fso.GetFolder("#{inFolderName}")
    e2 = new Enumerator(fsoFolder.SubFolders)
    e2.moveFirst()
    while !e2.atEnd()
      #r = []
      r = new Array()
      r = @createFileList(e2.item())
      result.concat r
      e2.moveNext()
    e1 = new Enumerator(fsoFolder.Files)
    e1.moveFirst()
    while !e1.atEnd()
      file = e1.item()
      result.push file
      e1.moveNext()
    return result


  #  if @fso.FolderExists("#{inFolderName}")
  #    # WScript.Echo("#{inFolderName} exists!")
  #    fsoFolder = @fso.GetFolder("#{inFolderName}")
  #    # WScript.Echo(fsoFolder.Name)
  #    if fsoFolder.Files?
  #       return @ue.col2ary(fsoFolder.Files)
  #    #   ary_files.concat @ue.col2ary(fsoFolder.Files)
  #    #return ary_files
  #    #if fsoFolder.SubFolders?
  #    #  e = new Enumerator()
  #    #  while ! e.atEnd()
  #    #    subfolder = e.item()

  #    #return ary_files
