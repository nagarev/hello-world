import helloworld.Person
class BootStrap {

    def init = { servletContext ->
        if (Person.count() == 0) {
            new Person(firstName: 'Nazaret', lastName: 'García', age: 25).save()
            new Person(firstName: 'Guillermo', lastName: 'Pacheco', age: 26).save()
            new Person(firstName: 'Diego', lastName: 'Romero', age: 25).save()
        }
    }

    def destroy = {
    }

}
