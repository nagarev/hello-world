package helloworld

import grails.plugins.rest.client.RestResponse

class ItemController {

    def itemService

    def index() {

        RestResponse response = itemService.getItemList()

        render response.json

    }

}
