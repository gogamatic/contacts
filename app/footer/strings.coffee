if typeof define is 'function' and define.amd
  _define = define
else
  _define = (factory) -> module.exports = factory require
  
_define
  text: 'Checkout <a href="http://cujojs.com/">cujoJS</a>!'
