resource "newrelic_alert_policy" "foo" {
  name = "sli & slo2"
}

resource "newrelic_nrql_alert_condition" "foo" {
  account_id                     = 3649334
  policy_id                      = newrelic_alert_policy.foo.id
  type                           = "static"
  name                           = "sli12"
  description                    = "Alert when transactions are taking too long"
  runbook_url                    = "https://www.example.com"
  enabled                        = true
  violation_time_limit_seconds   = 3600
  fill_option                    = "static"
  fill_value                     = 1.0
  aggregation_window             = 60
  aggregation_method             = "event_flow"
  aggregation_delay              = 120
  expiration_duration            = 120
  open_violation_on_expiration   = true
  close_violations_on_expiration = true
  slide_by                       = 30

  nrql {
    query = "FROM Metric SELECT 100 - clamp_max(sum(newrelic.sli.good) / sum(newrelic.sli.valid) * 100, 100) as 'SLI compliance'  WHERE sli.guid = 'MzY0OTMzNHxFWFR8U0VSVklDRV9MRVZFTHwzNzA4NTU'"
  }

  critical {
    operator              = "above"
    threshold             = 5.5
    threshold_duration    = 300
    threshold_occurrences = "ALL"
  }

  warning {
    operator              = "above"
    threshold             = 3.5
    threshold_duration    = 600
    threshold_occurrences = "ALL"
  }
}



