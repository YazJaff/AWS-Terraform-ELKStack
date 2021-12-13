# AWS-Terraform-ELKStazck
Cluster of 3 Elasticsearch nodes+1 Logstash node(listening on TCP port 5042 and can write to Elasticsearch)+1 Kibana node(listening on a public interface and can read from Elasticsearch)+1 filebeat node

Logs are created and stored inside /var/log

Filebeat takes up these logs and sends them to logstash at port 5042.

Logstash can then apply filters to these logs. It also works without a filter. It then sends all the logs to the elasticsearch cluster at 9200.

Kibana is configured to display logs from elasticsearch port 9200.

Finally, the user can access these logs from the kibana dashboard.

Pre-Work Tasks:
  Create SSH public and private keys using "ssh-keygen" command (keys in script location - elk_key, elk_key.pub)__
  Load the private key to PuttyGen and generate .pem and .ppk private keys (keys in script location - elk_key.pem, elk_key.ppk)__
  Ensure OpenSSH Authentication Agent is running and generated .pem key is added to Pageant(Putty Authentication Agent)__

>>>>>>>>>>>>>>>>>.. Initialize, plan and apply ELK.tf.

Post-Work Tasks:
 Status check:
 **Elasticsearch cluster status** – visit <public IP of any es node>:9200/_cluster/health
 **Elasticsearch nodes** – visit <public IP of any es node>:9200/_cat/nodes?v
 **Kibana** - <public IP of kibana ec2>:5601
        Kibana Settings-> Index Patterns -> Add logstash index.
 
 ***
 If "logstash" index not available:
 Check logs of each component by SSHing into each of them using command – “sudo systemctl status <component-name> -l”
 ***
 
 Verification: 
 SSH into filebeat ec2 and add a sample log over by adding a .log file at /var/log/
         echo "echo 'Pipedrive Sample log - 1' >> /var/log/PD-log.log" | sudo bash

 After adding the log verify the log record in Kibana.
 
 ===========================================================================
