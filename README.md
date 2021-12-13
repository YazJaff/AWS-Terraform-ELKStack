# AWS-Terraform-ELKStazck
Cluster of 3 Elasticsearch nodes+1 Logstash node(listening on TCP port 5042 and can write to Elasticsearch)+1 Kibana node(listening on a public interface and can read from Elasticsearch)+1 filebeat node

Logs are created and stored inside /var/log

Filebeat takes up these logs and sends them to logstash at port 5042.

Logstash can then apply filters to these logs. It also works without a filter. It then sends all the logs to the elasticsearch cluster at 9200.

Kibana is configured to display logs from elasticsearch port 9200.

Finally, the user can access these logs from the kibana dashboard.

Pre-Work Tasks:
 > Create SSH public and private keys using "ss-keygen" command (keys in script location - elk_key, elk_key.pub)
 > Load the private key to PuttyGen and generate .pem and .ppk private keys (keys in script location - elk_key.pem, elk_key.ppk)
 > 
