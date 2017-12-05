#!/bin/bash

cat << EOF > $PGDATA/postgresql.conf

#------------------------------------------------------------------------------
# CONNECTIONS AND AUTHENTICATION
#------------------------------------------------------------------------------

listen_addresses = '*'

#------------------------------------------------------------------------------
# ERROR REPORTING AND LOGGING
#------------------------------------------------------------------------------

logging_collector = on
log_line_prefix = '%m '


autovacuum_max_workers = 10
ssl = off
shared_buffers = 5GB
temp_buffers = 500MB
work_mem = 8388kB
maintenance_work_mem = 2GB
effective_cache_size = 8GB
effective_io_concurrency = 8
random_page_cost = 1.0
autovacuum = on
autovacuum_naptime = 20s
bgwriter_delay = 20ms
bgwriter_lru_multiplier = 4.0
bgwriter_lru_maxpages = 400
synchronous_commit = off
checkpoint_completion_target = 0.9
max_wal_size = 8GB
min_wal_size = 4GB
fsync = on
commit_delay = 50


max_locks_per_transaction = 150
max_connections = 500
standard_conforming_strings = off
escape_string_warning = off



EOF
