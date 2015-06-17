package helloworld

import helloworld.core.Response

class ItemService {
    static transactional = false

    def restClientService
    def jsonParserService

    def Response getItemList() {

        String url = "https://api.mercadolibre.com/items?attributes=id,title,base_price,date_created&ids=MLM467177444,MLM467177445"
        Response response = restClientService.doGetRequest(url)

        if (response.getCorrect()) {
            response.setPayload(
                    jsonParserService.getObjectList(
                            response.getPayload().toString()
                    )
            )
        } else {
            response.setPayload(false)
        }

        return response

    }

    def Response searchItems(searchTherms) {

        String url = "https://api.mercadolibre.com/sites/MLU/search?q=" + searchTherms
        Response response = restClientService.doGetRequest(url)

        if (response.getCorrect()) {
            response.setPayload(
                    jsonParserService.getObjectList(
                            response.getPayload().toString()
                    ).getAt("results")
            )
        } else {
            response.setPayload(false)
        }

        return response

    }

}
