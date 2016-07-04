package net.agrancaric.jenkinsbuilddemo.controller

import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

/**
 * Created by agrancaric on 7/4/16.
 */
@RestController
@RequestMapping("demo-controller")
class DemoController {

  @RequestMapping("example")
  def example() {
    [success: true]
  }
}
