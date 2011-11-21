package general



import org.junit.*
import grails.test.mixin.*
import javax.servlet.http.HttpServletResponse

@TestFor(AsistenteController)
@Mock(Asistente)
class AsistenteControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/asistente/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.asistenteInstanceList.size() == 0
        assert model.asistenteInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.asistenteInstance != null
    }

    void testSave() {
        controller.save()
        assert response.status == HttpServletResponse.SC_METHOD_NOT_ALLOWED

        response.reset()
        request.method = 'POST'
        controller.save()

        assert model.asistenteInstance != null
        assert view == '/asistente/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/asistente/show/1'
        assert controller.flash.message != null
        assert Asistente.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/asistente/list'


        populateValidParams(params)
        def asistente = new Asistente(params)

        assert asistente.save() != null

        params.id = asistente.id

        def model = controller.show()

        assert model.asistenteInstance == asistente
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/asistente/list'


        populateValidParams(params)
        def asistente = new Asistente(params)

        assert asistente.save() != null

        params.id = asistente.id

        def model = controller.edit()

        assert model.asistenteInstance == asistente
    }

    void testUpdate() {

        controller.update()
        assert response.status == HttpServletResponse.SC_METHOD_NOT_ALLOWED

        response.reset()
        request.method = 'POST'
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/asistente/list'

        response.reset()


        populateValidParams(params)
        def asistente = new Asistente(params)

        assert asistente.save() != null

        // test invalid parameters in update
        params.id = asistente.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/asistente/edit"
        assert model.asistenteInstance != null

        asistente.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/asistente/show/$asistente.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        asistente.clearErrors()

        populateValidParams(params)
        params.id = asistente.id
        params.version = -1
        controller.update()

        assert view == "/asistente/edit"
        assert model.asistenteInstance != null
        assert model.asistenteInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert response.status == HttpServletResponse.SC_METHOD_NOT_ALLOWED

        response.reset()
        request.method = 'POST'
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/asistente/list'

        response.reset()

        populateValidParams(params)
        def asistente = new Asistente(params)

        assert asistente.save() != null
        assert Asistente.count() == 1

        params.id = asistente.id

        controller.delete()

        assert Asistente.count() == 0
        assert Asistente.get(asistente.id) == null
        assert response.redirectedUrl == '/asistente/list'
    }
}
