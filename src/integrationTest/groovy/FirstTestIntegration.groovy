import spock.lang.Specification

class FirstTestIntegration extends Specification {

    def "test clinic" () {
       when:
          String s  =  "sdfdf"
       then:
           s == "1234"
    }
}