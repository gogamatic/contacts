if typeof define == 'function' and define.amd
  _define = define
else
  _define = (factory) -> module.exports = factory require

_define ->
  editContact: (contact) -> @_updateForm @_form, contact
