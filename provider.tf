    terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
  account_id = 3649334
  api_key = "NRAK-J0L1ICZGI7HFZ57V2Z9BA3TZUCC"    # Usually prefixed with 'NRAK'
  region = "US"                    # Valid regions are US and EU
}