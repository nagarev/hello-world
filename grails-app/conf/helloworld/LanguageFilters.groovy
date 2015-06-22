package helloworld

class LanguageFilters {

    def grailsApplication

    def filters = {
        languageControl(controller:'*', action:'*') {
            before = {
                if(!session.language){
                    session.language = 'en'
                }
                if(params.containsKey('lang')){
                    String[] languagesList = grailsApplication.config.helloworld.languagesList
                    if(languagesList.contains(params.lang)){
                        session.language = params.lang
                    }
                }
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
