var osascript = require('osascript')
var fs = require('fs')

// Run JavaScript file through OSA
fs.createReadStream('./src/grayscale.applescript')
// Need to override options to define AppleScript
  .pipe(osascript({
    type: 'AppleScript'
  }))
  .pipe(process.stdout)
