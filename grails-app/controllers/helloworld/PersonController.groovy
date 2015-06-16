package helloworld

class PersonController {

    def form() {}

    def save() {
        def person = new Person(params)
        person.save()
        redirect(action: "index")
        return
    }

    def index() {

        def list = Person.list()

        [ list:list ]

    }

}
