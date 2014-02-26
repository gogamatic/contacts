if typeof define is 'function' and define.amd
  _define = define
else
  _define = (factory) -> module.exports = factory require

_define ->

	###
	 * Validate a contact
	###
	
	return validateContact = (contact) -> 
		result = valid: true, errors: [] 

		valid = contact and 'firstName' in contact and contact.firstName.trim()
		if !valid 
			result.valid = false
			result.errors.push property: 'firstName', message: 'missing' 
	

		valid = contact and 'lastName' in contact and contact.lastName.trim()
		if !valid
			result.valid = false
			result.errors.push property: 'lastName', message: 'missing' 

		return result
