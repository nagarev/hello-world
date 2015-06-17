package helloworld

class ItemController {

    def itemService

    def search() {

        def response = itemService.searchItems(params.searchTherms)

        if (response.getCorrect()) {

            render template: 'itemList',
                model: [ list: response.getPayload(), error:false ]

        } else {

            render template: 'itemList',
                model: [ error:true ]

        }

    }

    def index() {

        def response = itemService.searchItems("")

        if (response.getCorrect()) {

            [ list: response.getPayload(), error:false ]

        } else {

            [ error:true ]

        }

    }

}
