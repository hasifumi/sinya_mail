sys = require 'sys'
exec = (require 'child_process').exec

FILENAME = 'main'
FILES = [
  'coffee/util_etc.coffee',
  'coffee/util_file.coffee',
]
# HTMLFILE = 'index.html'

task 'compile', 'compile main', (options) ->
  outputErr = (err, stdout, stderr) ->
    throw err if err
    if stdout or stderr
      console.log "#{stdout} #{stderr}"
  if FILES.length is 1
    exec "coffee -cb #{FILENAME}.js #{FILES[0]}", outputErr
  else
    exec "coffee -cbj #{FILENAME} #{FILES.join ' '}", outputErr
