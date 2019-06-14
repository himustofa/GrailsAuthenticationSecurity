package com.kamal

import grails.testing.web.taglib.TagLibUnitTest
import spock.lang.Specification

class CustomTagLibSpec extends Specification implements TagLibUnitTest<CustomTagLib> {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        expect:"fix me"
            true == false
    }
}
