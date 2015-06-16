package helloworld

import grails.plugins.rest.client.RestResponse
import grails.transaction.Transactional

@Transactional
class ItemService {

    def restClientService

    def RestResponse getItemList() {

        String url = "https://api.mercadolibre.com/items?attributes=id,title,base_price,date_created&ids=MLM467177444,MLM467177445"

        return restClientService.getResponse(url)

    }

}
