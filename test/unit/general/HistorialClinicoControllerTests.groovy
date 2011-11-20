package general



import org.junit.*
import grails.test.mixin.*
import javax.servlet.http.HttpServletResponse

@TestFor(HistorialClinicoController)
@Mock(HistorialClinico)
class HistorialClinicoControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/historialClinico/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.historialClinicoInstanceList.size() == 0
        assert model.historialClinicoInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.historialClinicoInstance != null
    }

    void testSave() {
        controller.save()
        assert response.status == HttpServletResponse.SC_METHOD_NOT_ALLOWED

        response.reset()
        request.method = 'POST'
        controller.save()

        assert model.historialClinicoInstance != null
        assert view == '/historialClinico/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/historialClinico/show/1'
        assert controller.flash.message != null
        assert HistorialClinico.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/historialClinico/list'


        populateValidParams(params)
        def historialClinico = new HistorialClinico(params)

        assert historialClinico.save() != null

        params.id = historialClinico.id

        def model = controller.show()

        assert model.historialClinicoInstance == historialClinico
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/historialClinico/list'


        populateValidParams(params)
        def historialClinico = new HistorialClinico(params)

        assert historialClinico.save() != null

        params.id = historialClinico.id

        def model = controller.edit()

        assert model.historialClinicoInstance == historialClinico
    }

    void testUpdate() {

        controller.update()
        assert response.status == HttpServletResponse.SC_METHOD_NOT_ALLOWED

        response.reset()
        request.method = 'POST'
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/historialClinico/list'

        response.reset()


        populateValidParams(params)
        def historialClinico = new HistorialClinico(params)

        assert historialClinico.save() != null

        // test invalid parameters in update
        params.id = historialClinico.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/historialClinico/edit"
        assert model.historialClinicoInstance != null

        historialClinico.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/historialClinico/show/$historialClinico.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        historialClinico.clearErrors()

        populateValidParams(params)
        params.id = historialClinico.id
        params.version = -1
        controller.update()

        assert view == "/historialClinico/edit"
        assert model.historialClinicoInstance != null
        assert model.historialClinicoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert response.status == HttpServletResponse.SC_METHOD_NOT_ALLOWED

        response.reset()
        request.method = 'POST'
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/historialClinico/list'

        response.reset()

        populateValidParams(params)
        def historialClinico = new HistorialClinico(params)

        assert historialClinico.save() != null
        assert HistorialClinico.count() == 1

        params.id = historialClinico.id

        controller.delete()

        assert HistorialClinico.count() == 0
        assert HistorialClinico.get(historialClinico.id) == null
        assert response.redirectedUrl == '/historialClinico/list'
    }
}
