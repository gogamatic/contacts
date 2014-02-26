if typeof define == 'function' and define.amd
  _define = define
else
  _define = (factory) -> module.exports = factory require

_define ->

	###
	 * Validate a contact
	###
	return validateContact = (contact) -> 
		result = valid: true, errors: [] 

		valid = contact && 'firstName' in contact && contact.firstName.trim();
		if !valid 
			result.valid = false
			result.errors.push property: 'firstName', message: 'missing' 
	

		valid = contact && 'lastName' in contact && contact.lastName.trim();
		if !valid
			result.valid = false
			result.errors.push property: 'lastName', message: 'missing' 

		return result;
