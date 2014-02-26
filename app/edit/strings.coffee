if typeof define is 'function' and define.amd
  _define = define
else
  _define = (factory) -> module.exports = factory require
  
_define
firstName: 'First Name'
  lastName: 'Last Name'
  phone: 'Phone Number'
  email: 'E-Mail'
  save: 'Save'
  clear: 'Clear'
