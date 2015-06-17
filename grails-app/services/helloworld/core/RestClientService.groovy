package helloworld.core

import grails.plugins.rest.client.RestResponse
import grails.plugins.rest.client.RestBuilder
import grails.transaction.Transactional

@Transactional
class RestClientService {

    def RestResponse doGetRequest(String url) {
        def resp = new RestBuilder().get(url)
        return resp
    }

}
