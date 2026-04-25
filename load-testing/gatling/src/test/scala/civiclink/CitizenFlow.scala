package civiclink

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import scala.concurrent.duration._

class CitizenFlow extends Simulation {
  val httpProtocol = http
    .baseUrl("https://api.civiclink.gov")
    .acceptHeader("application/json")

  val browse = scenario("Browse services")
    .exec(http("catalogue").get("/v1/services/catalogue"))
    .pause(1)

  setUp(
    browse.inject(
      rampUsers(500) during (5.minutes),
      constantUsersPerSec(100) during (10.minutes)
    )
  ).protocols(httpProtocol)
   .assertions(
      global.responseTime.percentile3.lt(500),
      global.successfulRequests.percent.gt(99)
   )
}
