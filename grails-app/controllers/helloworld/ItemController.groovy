package helloworld

class ItemController {

    def itemService

    def index() {

        render itemService.getItemList()

    }

}
