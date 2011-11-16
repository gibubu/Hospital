package hospital

import general.*
import general.BaseIntegrationTest
import org.junit.*
import java.util.*
import org.springframework.security.core.authority.GrantedAuthorityImpl
import static org.junit.Assert.*

class DoctorControllerIntegrationTests extends BaseIntegrationTest{

    @Before
    void setUp() {
        // Setup logic here
    }

    @After
    void tearDown() {
        // Tear down logic here
    }

    @Test
    void debieraDarDeAltaUnDoctor() {
        println "debieraDarDeAltaUnDoctor"
        
        def authenticate = authenticateAdministrador()
        println "authenticate: ${authenticate.getProperties()}"

        def principal = authenticate.principal

        Set<Rol> authorities = principal.getAuthorities()

        boolean isAdministrador = false
        for(auth in authorities){
            println "authority: ${auth.authority}"
            if(auth.authority.equals("ROLE_ADMINISTRADOR")){
                isAdministrador = true
            }
        }


        assert isAdministrador

        def controller = new DoctorController()
        assert controller

        def model = controller.create()
        assert model
        assert model.doctorInstance

        controller.params.username = 'doctor'
        controller.params.password = 'doctor'
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

        assert controller.response.redirectedUrl.startsWith('/doctor/show')

        assert Persona.findByUsername('doctor')
    }

    
}
