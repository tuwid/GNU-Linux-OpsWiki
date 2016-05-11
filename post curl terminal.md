

Make `POST` requests with `curl` via `terminal` 

Often the first thing we need to test if the API we're writing works as it should with POST requests. I always found it more quick to issue test posts via terminal rather than other third party application. This is as easy as setting a header and sending the data 

```
curl -H "Content-Type: application/json" \
-X POST -d '{"key":"value"}' \
http://localhost:3000/api/
```