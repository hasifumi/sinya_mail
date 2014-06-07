class Util_File
  constructor: () ->
    @fso = new ActiveXObject("Scripting.FileSystemObject")

  echo:(text) ->
    WScript.Echo("#{text}")
    return

  createFileList:(inFolderName) ->
    if @fso.FolderExists("#{inFolderName}")
      fsoFolder = @fso.GetFolder("#{inFolderName}")
      return fsoFolder.Files
    #  WScript.Echo fsoFolder.Files.Count
    #  WScript.Echo fsoFolder.Files[0].Attributes
    #  files = []
    #  for file in fsoFolder.Files
    #    WScript.Echo file.Name
    #    files.push file.Name
    #  files
