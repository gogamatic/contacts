if typeof define == 'function' and define.amd
  _define = define
else
  _define = (factory) -> module.exports = factory require
  
_define ->
	return (contact) ->
		contact.firstName = contact.firstName && contact.firstName.trim() || ''
		contact.lastName = contact.lastName && contact.lastName.trim() || ''
		contact.phone = contact.phone && contact.phone.trim() || ''
		contact.email = contact.email && contact.email.trim() || ''
		return contact
