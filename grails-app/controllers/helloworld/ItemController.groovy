package helloworld

class ItemController {

    def itemService

    def index() {

        def list = itemService.getItemList()

        [ list:list ]

    }

}
