# Sample Logstash configuration for creating a simple
# Beats -> Logstash -> Elasticsearch pipeline.

input {
  beats {
    port => 5042
  }
}

output {
  elasticsearch {
    hosts => ["http://${elasticsearch}:9200"]
    index => "logstash"
  }
}