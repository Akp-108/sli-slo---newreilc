# resource "newrelic_service_level" "latency" {
#     guid = "MzY2MDA0OHxBUE18QVBQTElDQVRJT058NTYxMjQwNzc1"
#     name = "Latency"
#     description = "Latency of App."
#     events {
#         account_id = YourID
#         valid_events {
#             from = "Transaction"
#             where = "entityGuid = 'MzY2MDA0OHxBUE18QVBQTElDQVRJT058NTYxMjQwNzc1' AND (transactionType='Web')"
#         }
#         good_events {
#             from = "Transaction"
#             where = "entityGuid = 'MzY2MDA0OHxBUE18QVBQTElDQVRJT058NTYxMjQwNzc1'  AND (transactionType= 'Web') AND duration < 23.0"
#         }
#     }
#     objective {
#         target = 95.00
#         time_window {
#             rolling {
#                 count = 7
#                 unit = "DAY"
#             }
#         }
#     }
# }


# resource "newrelic_service_level" "success" {
#     guid = "MzY2MDA0OHxBUE18QVBQTElDQVRJT058NTYxMjQwNzc1"
#     name = "Success"
#     description = "Success of app."

#     events {
#         account_id = YourID
#         valid_events {
#             from = "Transaction"
#             where = "entityGuid = 'MzY2MDA0OHxBUE18QVBQTElDQVRJT058NTYxMjQwNzc1' "
#         }
#         bad_events {
#             from = "Transaction"
#             where = "entityGuid = 'MzY2MDA0OHxBUE18QVBQTElDQVRJT058NTYxMjQwNzc1'  AND (transactionType= 'Web') AND error.expected IS FALSE"
#         }
#     }

#     objective {
#         target = 99.99
#         time_window {
#             rolling {
#                 count = 7
#                 unit = "DAY"
#             }
#         }
#     }
# }




# resource "newrelic_service_level" "synthetic-sli" {
#     guid = "MzY2MDA0OHxBUE18QVBQTElDQVRJT058NTYxMjQwNzc1"
#     name = "Synthetic_SLI"
#     description = "Synthetic SLI ."

#     events {
#         account_id = YourID
#         valid_events {
#             from = "SyntheticCheck"
#             where = "monitorName ='Cloudeq Website'"
#         }
#         good_events {
#             from = "SyntheticCheck"
#             where = "monitorName ='Cloudeq Website' AND result ='SUCCESS' and monitorName ='Cloudeq Website'"
#         }
#     }

#     objective {
#         target = 99.00
#         time_window {
#             rolling {
#                 count = 1
#                 unit = "DAY"
#             }
#         }
#     }
# }




# resource "newrelic_service_level" "backend-latency" {
#     guid = "MzY2MDA0OHxBUE18QVBQTElDQVRJT058NTYxMjQwNzc1"
#     name = "BackendLatency"
#     description = "Backend Latency of the app."

#     events {
#         account_id = YourID
#         valid_events {
#             from = "PageView"
#             where = "domProcessingDuration IS NOT NULL and appName ='CEQ-AWS-REACT-APP'  and browserTransactionName = 'aws-ceq-app-dev-us-east-1-webalb-1675733897.us-east-1.elb.amazonaws.com:443/'"
#         }
#         bad_events {
#             from = "PageView"
#             where = "domProcessingDuration >1 and backendDuration >1 and browserTransactionName ='aws-ceq-app-dev-us-east-1-webalb-1675733897.us-east-1.elb.amazonaws.com:443/'"
#         }
#     }

#     objective {
#         target = 99.00
#         time_window {
#             rolling {
#                 count = 7
#                 unit = "DAY"
#             }
#         }
#     }
# }



# resource "newrelic_service_level" "response-code" {
#     guid = "MzY2MDA0OHxBUE18QVBQTElDQVRJT058NTYxMjQwNzc1"
#     name = "KubeSpan"
#     description = "Proportion of requests that are served faster than a threshold."

#     events {
#         account_id = YourID
#         valid_events {
#             from = "Span"
#             where = "service.name = 'newrelic-bundle-kube-state-metrics' and  http.url ='10.244.0.26:8080/'"
#         }
#         bad_events {
#             from = "Span"
#             where = "service.name = 'newrelic-bundle-kube-state-metrics' and http.url ='10.244.0.26:8080/' AND httpResponseCode = '404'"
#         }
#     }

#     objective {
#         target = 99.00
#         time_window {
#             rolling {
#                 count = 7
#                 unit = "DAY"
#             }
#         }
#     }
# }

