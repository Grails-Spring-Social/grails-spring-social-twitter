import grails.util.Environment

final springSocialPluginsVersionSuffix

switch(Environment.current.name.toLowerCase()) {

  case ["staging", "test-jenkins"]:
    springSocialPluginsVersionSuffix = '-SNAPSHOT'
    break

  case ["test","development"]:
    springSocialPluginsVersionSuffix = '-SNAPSHOT'
    grails.plugin.location.'spring-social-core' = '../grails-spring-social-core/'

    break

  default:
    springSocialPluginsVersionSuffix = ''
    break

}

/* Copyright 2011 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

def springSocialVersion = "1.1.0.RELEASE"

grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
//grails.project.war.file = "target/${appName}-${appVersion}.war"
grails.project.dependency.resolution = {
  // inherit Grails' default dependencies
  inherits("global") {
    // uncomment to disable ehcache
    // excludes 'ehcache'
  }
  log "warn" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
  repositories {
    grailsPlugins()
    grailsHome()
    grailsCentral()

    mavenLocal()
    mavenCentral()

    mavenRepo "http://maven.springframework.org/release"
    mavenRepo "http://maven.springframework.org/snapshot"
    mavenRepo "http://maven.springframework.org/milestone"
    mavenRepo "http://repo.sindica.to/nexus/content/repositories/snapshots"
  }
  dependencies {
    compile("org.springframework.social:spring-social-twitter:${springSocialVersion}") { transitive = false }
  }
  plugins {
    compile(":spring-social-core:0.2.0.BUILD$springSocialPluginsVersionSuffix")
    compile ":platform-core:1.0.0"

  }
}


grails.project.repos.sindicato.url = "http://repo.sindica.to/nexus/content/repositories/snapshots/"
grails.project.repos.default = "sindicato"
