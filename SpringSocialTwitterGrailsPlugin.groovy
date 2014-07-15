class SpringSocialTwitterGrailsPlugin {
  // the plugin version
  String version = "0.2.0.BUILD-SNAPSHOT"
  // the version or versions of Grails the plugin is designed for
  String grailsVersion = "1.3.0 > *"
  // the other plugins this plugin depends on
  Map dependsOn = [:]
  // resources that are excluded from plugin packaging
  List pluginExcludes = [
      "grails-app/views/error.gsp"
  ]

  String author = "Domingo Suarez Torres"
  String authorEmail = "domingo.suarez@gmail.com"
  String title = "Spring Social Twitter"
  String description = 'Spring Social Twitter plugin.'

  String documentation = "http://grails.org/plugin/spring-social-twitter"

  def doWithSpring = {
    xmlns context: "http://www.springframework.org/schema/context"
    context.'component-scan'('base-package': "grails.plugins.springsocial.config.twitter")
  }

  def doWithConfig = { config ->
    springSocialTwitter {
      page.connect = "/springsocial/twitter/connect"
      page.connectedHome = "/springSocialTwitter/index"
      page.profile = "/springSocialTwitter/index"
      page.timeLine = "/springsocial/twitter/timeline"
      page.profiles = "/springsocial/twitter/profiles"
      page.directMessages = "/springsocial/twitter/messages"
      page.trends = "/springsocial/twitter/trends"
      page.deniedHome = "/springSocialTwitter/login"
    }
    def doWithConfigOptions = {
      consumerKey(type: String)
      consumerSecret(type: String)
    }
  }


}
