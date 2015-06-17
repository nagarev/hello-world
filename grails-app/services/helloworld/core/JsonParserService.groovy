package helloworld.core

import groovy.json.JsonSlurper

class JsonParserService {
    static transactional = false

    def jsonSlurper = new JsonSlurper()

    def Object getObjectList(String json) {

        return jsonSlurper.parseText(json)

    }
}
