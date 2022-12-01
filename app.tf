
resource "newrelic_service_level" "latency" {
    guid = "MzY0OTMzNHxBUE18QVBQTElDQVRJT058MTAzMzM4MDc2NA"
    name = "sli & slo"
    description = "Latency of App."
    events {
        account_id = 3649334
        valid_events {
            from = "Transaction"
            where = "entityGuid ='MzY0OTMzNHxCUk9XU0VSfEFQUExJQ0FUSU9OfDExMzQyNjEzMzM' AND httpResponseCode = 200"
        }
        good_events {
            from = "Transaction"
            where = "entityGuid ='MzY0OTMzNHxCUk9XU0VSfEFQUExJQ0FUSU9OfDExMzQyNjEzMzM' AND httpResponseCode != 200"
        }
    }
    objective {
        target = 95.00
        time_window {
            rolling {
                count = 7
                unit = "DAY"
            }
        }
    }
}



