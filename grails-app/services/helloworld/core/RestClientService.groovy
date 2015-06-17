package helloworld.core

import grails.plugins.rest.client.RestBuilder
import grails.plugins.rest.client.RestResponse

class RestClientService {
    static transactional = false

    def Response doGetRequest(String url) {

        Response response = new Response()
        RestResponse restResponse = new RestBuilder().get(url)

        response.setCorrect(false)
        response.setPayload(restResponse)

        if (restResponse.statusCode.value() == 200) {
            response.setCorrect(true)
            response.setPayload(restResponse.json)
        }

        return response

    }

}
