if typeof define == 'function' and define.amd
  _define = define
else
  _define = (factory) -> module.exports = factory require
  
define ->
