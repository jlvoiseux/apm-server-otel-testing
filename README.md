## Usage
Set the following environment variables:
```
ELASTIC_CLOUD_ID=<Cloud ID of your Elastic Cloud instance>
ELASTIC_CLOUD_CREDENTIALS=<Credentials of your Elastic Cloud instance (format : username:password)>
APM_AGENT_TYPE="opentelemetry"
OTEL_EXPORTER_OTLP_PROTOCOL="http/protobuf"
```

Run the following commands to clone all required repositories, check out the relevant branches and start the test setup:
```shell
./init.sh
docker-compose up --build
```

Once the test setup is launched, generated some traces / metrics by visiting the following links
#### Java
http://127.0.0.1:3000/dashboard
http://127.0.0.1:3000/products

#### .NET
http://127.0.0.1:3001/api/products
http://127.0.0.1:3001/api/customers

#### NodeJS
http://127.0.0.1:3002/dashboard
http://127.0.0.1:3002/orders
