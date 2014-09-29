"use strict"

fs              = require "fs"
Hope            = require "hope"
yaml            = require "js-yaml"
path            = require "path"

# Configuration
folder          = "../../../"
test_path       = path.join __dirname, "#{folder}zen.request.yml"
global.ZENrequest  = yaml.safeLoad(fs.readFileSync(test_path, 'utf8'))

module.exports =
  start: ->
    console.log "------------------------------------------------------------------------".grey
    console.log " ▣ REQUEST"

    tests = []
    for test in ZENrequest.tests
      tests = tests.concat do require("#{folder}/test/#{test}")

    ZENrequest.counters = total: tests.length, success: 0, current: 0
    Hope.chain(tests).then (error, result) ->
      coverage = ((ZENrequest.counters.success * 100) / ZENrequest.counters.total).toFixed(2)
      failed = ZENrequest.counters.total - ZENrequest.counters.success
      console.log "------------------------------------------------------------------------".grey
      console.log (if coverage >= 95 then " ✓ ".green else " ⚑ ".red) ,"Request coverage:".grey, "#{coverage}%"[if coverage < 95 then "red" else "green"], " (#{failed} / #{ZENrequest.counters.total})".grey
      console.log "------------------------------------------------------------------------".grey
