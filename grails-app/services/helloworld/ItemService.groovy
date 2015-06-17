package helloworld

import grails.transaction.Transactional

@Transactional
class ItemService {

    def restClientService
    def jsonParserService

    def Object getItemList() {

        String url = "https://api.mercadolibre.com/items?attributes=id,title,base_price,date_created&ids=MLM467177444,MLM467177445"

        def response = restClientService.doGetRequest(url)

        def list = jsonParserService.getObjectList(response.text)

        return list

    }

}
