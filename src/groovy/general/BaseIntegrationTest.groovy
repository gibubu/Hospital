package general

import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.authority.GrantedAuthorityImpl
import org.codehaus.groovy.grails.plugins.springsecurity.GrailsUser
import org.springframework.security.core.context.SecurityContextHolder as SCH
import org.springframework.security.authentication.TestingAuthenticationToken

class BaseIntegrationTest extends GroovyTestCase {

    def authenticateAdministrador() {
        def credentials = 'admin'
        def persona = new Persona(
                username:'admin'
                ,password:credentials
            )
        def authorities = [new GrantedAuthorityImpl('ROLE_ADMINISTRADOR')]
        def principal = new GrailsUser(persona.username,credentials,true,true,true,true,authorities,132)
        authenticate(principal,credentials,authorities)
    }

    def authenticateDoctor() {
        def credentials = 'doctor'
        def persona = new Persona(
                username:'doctor'
                ,password:credentials
            )
        def authorities = [new GrantedAuthorityImpl('ROLE_DOCTOR')]
        def principal = new GrailsUser(persona.username,credentials,true,true,true,true,authorities,132)
        authenticate(principal,credentials,authorities)
    }

    def authenticateAsistente() {
        def credentials = 'asistente'
        def persona = new Persona(
                username:'asistente'
                ,password:credentials
            )
        def authorities = [new GrantedAuthorityImpl('ROLE_ASISTENTE')]
        def principal = new GrailsUser(persona.username,credentials,true,true,true,true,authorities,132)
        authenticate(principal,credentials,authorities)
    }

    def authenticatePaciente() {
        def credentials = 'paciente'
        def persona = new Persona(
                username:'paciente'
                ,password:credentials
            )
        def authorities = [new GrantedAuthorityImpl('ROLE_PACIENTE')]
        def principal = new GrailsUser(persona.username,credentials,true,true,true,true,authorities,132)
        authenticate(principal,credentials,authorities)
    }
    
    def authenticate(principal, credentials, authorities) {
        def authentication = new TestingAuthenticationToken(principal, credentials, authorities as GrantedAuthority[])
        authentication.authenticated = true
        SCH.context.authentication = authentication
        return authentication
    }

    def logout() {
        SCH.context.authentication = null
    }
}
