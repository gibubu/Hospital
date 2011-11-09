package general

import org.apache.commons.lang.builder.HashCodeBuilder

class PersonaRol implements Serializable {

	Persona persona
	Rol rol

	boolean equals(other) {
		if (!(other instanceof PersonaRol)) {
			return false
		}

		other.persona?.id == persona?.id &&
			other.rol?.id == rol?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (persona) builder.append(persona.id)
		if (rol) builder.append(rol.id)
		builder.toHashCode()
	}

	static PersonaRol get(long personaId, long rolId) {
		find 'from PersonaRol where persona.id=:personaId and rol.id=:rolId',
			[personaId: personaId, rolId: rolId]
	}

	static PersonaRol create(Persona persona, Rol rol, boolean flush = false) {
		new PersonaRol(persona: persona, rol: rol).save(flush: flush, insert: true)
	}

	static boolean remove(Persona persona, Rol rol, boolean flush = false) {
		PersonaRol instance = PersonaRol.findByPersonaAndRol(persona, rol)
		if (!instance) {
			return false
		}

		instance.delete(flush: flush)
		true
	}

	static void removeAll(Persona persona) {
		executeUpdate 'DELETE FROM PersonaRol WHERE persona=:persona', [persona: persona]
	}

	static void removeAll(Rol rol) {
		executeUpdate 'DELETE FROM PersonaRol WHERE rol=:rol', [rol: rol]
	}

	static mapping = {
		id composite: ['rol', 'persona']
		version false
	}
}
