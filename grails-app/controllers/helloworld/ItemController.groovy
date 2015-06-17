package helloworld

import helloworld.core.Response

class ItemController {

    def itemService

    def index() {

        def response = itemService.getItemList()

        if (response.getCorrect()) {

            [ list:response.getPayload(), error:false ]

        } else {

            [ error:true ]

        }

    }

}
