FROM osrm/osrm-backend

COPY tunisia-latest.osrm /data/tunisia-latest.osrm
COPY tunisia-latest.osrm.cell_metrics /data/tunisia-latest.osrm.cell_metrics
COPY tunisia-latest.osrm.cells /data/tunisia-latest.osrm.cells
COPY tunisia-latest.osrm.cnbg /data/tunisia-latest.osrm.cnbg
COPY tunisia-latest.osrm.cnbg_to_ebg /data/tunisia-latest.osrm.cnbg_to_ebg
COPY tunisia-latest.osrm.datasource_names /data/tunisia-latest.osrm.datasource_names
COPY tunisia-latest.osrm.ebg /data/tunisia-latest.osrm.ebg
COPY tunisia-latest.osrm.ebg_nodes /data/tunisia-latest.osrm.ebg_nodes
COPY tunisia-latest.osrm.edges /data/tunisia-latest.osrm.edges
COPY tunisia-latest.osrm.enw /data/tunisia-latest.osrm.enw
COPY tunisia-latest.osrm.fileIndex /data/tunisia-latest.osrm.fileIndex
COPY tunisia-latest.osrm.geometry /data/tunisia-latest.osrm.geometry
COPY tunisia-latest.osrm.icd /data/tunisia-latest.osrm.icd
COPY tunisia-latest.osrm.maneuver_overrides /data/tunisia-latest.osrm.maneuver_overrides
COPY tunisia-latest.osrm.mldgr /data/tunisia-latest.osrm.mldgr
COPY tunisia-latest.osrm.names /data/tunisia-latest.osrm.names
COPY tunisia-latest.osrm.nbg_nodes /data/tunisia-latest.osrm.nbg_nodes
COPY tunisia-latest.osrm.partition /data/tunisia-latest.osrm.partition
COPY tunisia-latest.osrm.properties /data/tunisia-latest.osrm.properties
COPY tunisia-latest.osrm.ramIndex /data/tunisia-latest.osrm.ramIndex
COPY tunisia-latest.osrm.restrictions /data/tunisia-latest.osrm.restrictions
COPY tunisia-latest.osrm.timestamp /data/tunisia-latest.osrm.timestamp
COPY tunisia-latest.osrm.tld /data/tunisia-latest.osrm.tld
COPY tunisia-latest.osrm.tls /data/tunisia-latest.osrm.tls
COPY tunisia-latest.osrm.turn_duration_penalties /data/tunisia-latest.osrm.turn_duration_penalties
COPY tunisia-latest.osrm.turn_penalties_index /data/tunisia-latest.osrm.turn_penalties_index
COPY tunisia-latest.osrm.turn_weight_penalties /data/tunisia-latest.osrm.turn_weight_penalties

EXPOSE 5000

CMD ["osrm-routed", "--algorithm", "mld", "/data/tunisia-latest.osrm", "--max-table-size", "1000"]
