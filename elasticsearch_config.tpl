# ======================== Elasticsearch Configuration =========================

# Please consult the documentation for further information on configuration options:
# https://www.elastic.co/guide/en/elasticsearch/reference/index.html

# ---------------------------------- Cluster -----------------------------------

# Use a descriptive name for your cluster:

cluster.name: ${cluster_name}

# ------------------------------------ Node ------------------------------------

# Use a descriptive name for the node:

node.name: ${node_name}

# ----------------------------------- Paths ------------------------------------

# Path to directory where to store the data (separate multiple locations by comma):

path.data: /var/lib/elasticsearch

# Path to log files:

path.logs: /var/log/elasticsearch

# ---------------------------------- Network -----------------------------------

# Set the bind address to a specific IP (IPv4 or IPv6):

network.host: ${node}

# Set a custom port for HTTP:

#http.port: 9200

# --------------------------------- Discovery ----------------------------------
# The default list of hosts is ["127.0.0.1", "[::1]"]

discovery.seed_hosts: ["${node1}", "${node2}","${node3}"]

# Bootstrap the cluster using an initial set of master-eligible nodes:

cluster.initial_master_nodes: ["${node1}", "${node2}","${node3}"]
