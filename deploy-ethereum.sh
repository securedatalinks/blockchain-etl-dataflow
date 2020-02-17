#!/usr/bin/env bash

mvn -e -Pdataflow-runner compile exec:java \
-Dexec.mainClass=io.blockchainetl.ethereum.EthereumPubSubToBigQueryPipeline \
-Dexec.args="--chainConfigFile=chainConfigEthereumDev.json \
--allowedTimestampSkewSeconds=36000 \
--gcpTempLocation=gs://ethereum-mainnet/dataflow \
--tempLocation=gs://ethereum-mainnet/dataflow \
--project=vigeo-255803 \
--runner=DataflowRunner \
--jobName=ethereum-pubsub-to-bigquery13 \
--workerMachineType=n1-standard-1 \
--maxNumWorkers=4 \
--diskSizeGb=30 \
--region=us-central1 \
--zone=us-central1-a \
"
