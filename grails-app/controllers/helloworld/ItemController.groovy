package helloworld

import groovy.json.JsonSlurper
import grails.plugins.rest.client.RestResponse

class ItemController {

    def jsonSlurper = new JsonSlurper()
    def itemService

    def index() {

        RestResponse response = itemService.getItemList()

        def list = jsonSlurper.parseText(response.text)

        [ list:list ]

    }

}
