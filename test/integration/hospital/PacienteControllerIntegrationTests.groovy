package hospital

import general.*
import general.BaseIntegrationTest
import org.junit.*
import java.util.*
import org.springframework.security.core.authority.GrantedAuthorityImpl
import static org.junit.Assert.*

class PacienteControllerIntegrationTests extends BaseIntegrationTest{

    @Before
    void setUp() {
        // Setup logic here
    }

    @After
    void tearDown() {
        // Tear down logic here
    }

@Test
    void debieraDarDeAltaUnPaciente() {
        println "debieraDarDeAltaUnPaciente"

        def authenticate = authenticateDoctor()
        println "authenticate: ${authenticate.getProperties()}"

        def principal = authenticate.principal

        Set<Rol> authorities = principal.getAuthorities()

        boolean isDoctor = false
        for(auth in authorities){
            println "authority: ${auth.authority}"
            if(auth.authority.equals("ROLE_DOCTOR")){
                isDoctor = true
            }
        }

        assert isDoctor

        def controller = new PacienteController()
        assert controller

        def model = controller.create()
        assert model
        assert model.pacienteInstance

        controller.params.username = 'paciente'
        controller.params.password = 'paciente'
        controller.params.enabled = true
        controller.params.accountExpired = false
        controller.params.accountLocked = false
        controller.params.passwordExpired = false

        controller.params.nombre = 'TEST'
        controller.params.apellidoPaterno = 'TEST'
        controller.params.apellidoMaterno = 'TEST'
        controller.params.direccion = 'TEST'
        controller.params.telefono = 'TEST'
        controller.params.email = 'TEST'
        controller.save()

        assert controller.response.redirectedUrl.startsWith('/paciente/show')

        assert Persona.findByUsername('paciente')
    }
}
