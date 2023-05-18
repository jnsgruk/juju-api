---
title: Juju Client API v1.0
language_tabs:
  - shell: Shell
  - http: HTTP
  - javascript: JavaScript
  - ruby: Ruby
  - python: Python
  - php: PHP
  - java: Java
  - go: Go
toc_footers:
  - <a href="http://juju.is/docs">Find out more about Juju.</a>
includes: []
search: true
highlight_theme: darkula
headingLevel: 2

---

<!-- Generator: Widdershins v4.0.1 -->

<h1 id="juju-client-api">Juju Client API v1.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Next generation Juju client API .

Base URLs:

* <a href="https://localhost:17777/api/v1">https://localhost:17777/api/v1</a>

Email: <a href="mailto:jon.seager@canonical.com">Support</a> 
License: <a href="https://www.gnu.org/licenses/agpl-3.0.en.html">AGPL 3.0</a>

# Authentication

<h1 id="juju-client-api-model">model</h1>

Manage Juju models

<a href="https://juju.is/docs/olm/manage-models">Find out more about Juju models.</a>

## getModel

<a id="opIdgetModel"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://localhost:17777/api/v1/model/{name} \
  -H 'Accept: application/json'

```

```http
GET https://localhost:17777/api/v1/model/{name} HTTP/1.1
Host: localhost:17777
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('https://localhost:17777/api/v1/model/{name}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://localhost:17777/api/v1/model/{name}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://localhost:17777/api/v1/model/{name}', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://localhost:17777/api/v1/model/{name}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://localhost:17777/api/v1/model/{name}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://localhost:17777/api/v1/model/{name}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /model/{name}`

*Get a specific model.*

Returns detailed information about a given model

<h3 id="getmodel-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|name|path|string|true|The name of a model in the controller.|

> Example responses

> 200 Response

```json
{
  "name": "string",
  "owner-tag": "string",
  "type": "string",
  "uuid": "string",
  "agent-version": {
    "Build": 0,
    "Major": 0,
    "Minor": 0,
    "Patch": 0,
    "Tag": "string"
  },
  "cloud-credential-tag": "string",
  "cloud-region": "string",
  "cloud-tag": "string",
  "controller-uuid": "string",
  "counts": [
    {
      "count": 0,
      "entity": "string"
    }
  ],
  "default-series": "string",
  "is-controller": true,
  "life": "string",
  "migration": {
    "end": "2019-08-24T14:15:22Z",
    "start": "2019-08-24T14:15:22Z",
    "status": "string"
  },
  "provider-type": "string",
  "sla": {
    "level": "string",
    "owner": "string"
  },
  "status": {
    "application-count": 0,
    "applications": [
      {
        "name": "string"
      }
    ],
    "error": {
      "code": "string",
      "info": {},
      "message": "string"
    },
    "filesystems": [
      {
        "detachable": true,
        "id": "string",
        "message": "string",
        "provider-id": "string",
        "status": "string"
      }
    ],
    "hosted-machine-count": 0,
    "life": "string",
    "machines": [
      {
        "display-name": "string",
        "ha-primary": true,
        "hardware": {
          "arch": "string",
          "availability-zone": "string",
          "cores": 0,
          "cpu-power": 0,
          "mem": 0,
          "root-disk": 0,
          "tags": [
            "string"
          ],
          "virt-type": "string"
        },
        "has-vote": true,
        "id": "string",
        "instance-id": "string",
        "message": "string",
        "status": "string",
        "wants-vote": true
      }
    ],
    "model-tag": "string",
    "owner-tag": "string",
    "type": "string",
    "unit-count": 0,
    "volumes": [
      {
        "detachable": true,
        "id": "string",
        "message": "string",
        "provider-id": "string",
        "status": "string"
      }
    ]
  },
  "user-access": "string",
  "cloud-credential-validity": true,
  "default-base": "string",
  "machines": [
    {
      "display-name": "string",
      "ha-primary": true,
      "hardware": {
        "arch": "string",
        "availability-zone": "string",
        "cores": 0,
        "cpu-power": 0,
        "mem": 0,
        "root-disk": 0,
        "tags": [
          "string"
        ],
        "virt-type": "string"
      },
      "has-vote": true,
      "id": "string",
      "instance-id": "string",
      "message": "string",
      "status": "string",
      "wants-vote": true
    }
  ],
  "secret-backends": [
    {
      "backend-type": "string",
      "config": {},
      "name": "string",
      "token-rotate-interval": 0
    }
  ],
  "supported-features": [
    {
      "description": "string",
      "name": "string",
      "version": "string"
    }
  ],
  "users": [
    {
      "access": "string",
      "display-name": "string",
      "last-connection": "2019-08-24T14:15:22Z",
      "model-tag": "string",
      "user": "string"
    }
  ]
}
```

<h3 id="getmodel-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Detailed information about the requested model.|[ModelDetail](#schemamodeldetail)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|none|None|

<aside class="success">
This operation does not require authentication
</aside>

## deleteModel

<a id="opIddeleteModel"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE https://localhost:17777/api/v1/model/{name}

```

```http
DELETE https://localhost:17777/api/v1/model/{name} HTTP/1.1
Host: localhost:17777

```

```javascript

fetch('https://localhost:17777/api/v1/model/{name}',
{
  method: 'DELETE'

})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

result = RestClient.delete 'https://localhost:17777/api/v1/model/{name}',
  params: {
  }

p JSON.parse(result)

```

```python
import requests

r = requests.delete('https://localhost:17777/api/v1/model/{name}')

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','https://localhost:17777/api/v1/model/{name}', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://localhost:17777/api/v1/model/{name}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "https://localhost:17777/api/v1/model/{name}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /model/{name}`

*Delete a model.*

Delete a model from the controller.

<h3 id="deletemodel-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|name|path|string|true|The name of a model in the controller.|
|destroy-storage|query|boolean|false|none|
|force|query|boolean|false|none|
|max-wait|query|integer|false|none|

<h3 id="deletemodel-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Model deleted.|None|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|none|None|

<aside class="success">
This operation does not require authentication
</aside>

## getModelStatus

<a id="opIdgetModelStatus"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://localhost:17777/api/v1/model/{name}/status \
  -H 'Accept: application/json'

```

```http
GET https://localhost:17777/api/v1/model/{name}/status HTTP/1.1
Host: localhost:17777
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('https://localhost:17777/api/v1/model/{name}/status',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://localhost:17777/api/v1/model/{name}/status',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://localhost:17777/api/v1/model/{name}/status', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://localhost:17777/api/v1/model/{name}/status', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://localhost:17777/api/v1/model/{name}/status");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://localhost:17777/api/v1/model/{name}/status", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /model/{name}/status`

*Get the status of a specific model.*

Returns status information about a model, such as applications deployed and machines.

<h3 id="getmodelstatus-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|name|path|string|true|The name of a model in the controller.|

> Example responses

> 200 Response

```json
{
  "application-count": 0,
  "applications": [
    {
      "name": "string"
    }
  ],
  "error": {
    "code": "string",
    "info": {},
    "message": "string"
  },
  "filesystems": [
    {
      "detachable": true,
      "id": "string",
      "message": "string",
      "provider-id": "string",
      "status": "string"
    }
  ],
  "hosted-machine-count": 0,
  "life": "string",
  "machines": [
    {
      "display-name": "string",
      "ha-primary": true,
      "hardware": {
        "arch": "string",
        "availability-zone": "string",
        "cores": 0,
        "cpu-power": 0,
        "mem": 0,
        "root-disk": 0,
        "tags": [
          "string"
        ],
        "virt-type": "string"
      },
      "has-vote": true,
      "id": "string",
      "instance-id": "string",
      "message": "string",
      "status": "string",
      "wants-vote": true
    }
  ],
  "model-tag": "string",
  "owner-tag": "string",
  "type": "string",
  "unit-count": 0,
  "volumes": [
    {
      "detachable": true,
      "id": "string",
      "message": "string",
      "provider-id": "string",
      "status": "string"
    }
  ]
}
```

<h3 id="getmodelstatus-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Status information about the requested model.|[ModelStatus](#schemamodelstatus)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|none|None|

<aside class="success">
This operation does not require authentication
</aside>

## listModels

<a id="opIdlistModels"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://localhost:17777/api/v1/models \
  -H 'Accept: application/json'

```

```http
GET https://localhost:17777/api/v1/models HTTP/1.1
Host: localhost:17777
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('https://localhost:17777/api/v1/models',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://localhost:17777/api/v1/models',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://localhost:17777/api/v1/models', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://localhost:17777/api/v1/models', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://localhost:17777/api/v1/models");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://localhost:17777/api/v1/models", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /models`

*List models*

Returns the models that the specified user has access to in the current server.

Controller admins (superuser) can list models for any user. 

Other users can only ask about their own models.

<h3 id="listmodels-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|user|query|string|false|The user to list models for (administrative users only)|
|all|query|string|false|Lists all models, regardless of user accessibility (administrative users only)|
|detailed|query|string|false|Return detailed model summaries with more information.|

#### Enumerated Values

|Parameter|Value|
|---|---|
|all|true|
|all|false|
|detailed|true|
|detailed|false|

> Example responses

> 200 Response

```json
{
  "user-models": [
    {
      "last-connection": "2019-08-24T14:15:22Z",
      "model": {
        "name": "string",
        "owner-tag": "string",
        "type": "string",
        "uuid": "string"
      }
    }
  ]
}
```

<h3 id="listmodels-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List of models the specified user has access to.|[UserModelList](#schemausermodellist)|

<aside class="success">
This operation does not require authentication
</aside>

## createModel

<a id="opIdcreateModel"></a>

> Code samples

```shell
# You can also use wget
curl -X POST https://localhost:17777/api/v1/models \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST https://localhost:17777/api/v1/models HTTP/1.1
Host: localhost:17777
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "cloud-tag": "string",
  "config": {},
  "credential": "string",
  "name": "string",
  "owner-tag": "string",
  "region": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('https://localhost:17777/api/v1/models',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post 'https://localhost:17777/api/v1/models',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('https://localhost:17777/api/v1/models', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','https://localhost:17777/api/v1/models', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://localhost:17777/api/v1/models");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "https://localhost:17777/api/v1/models", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /models`

*Create a new model*

Creates a new model using the account and model config specified in the args.

> Body parameter

```json
{
  "cloud-tag": "string",
  "config": {},
  "credential": "string",
  "name": "string",
  "owner-tag": "string",
  "region": "string"
}
```

<h3 id="createmodel-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ModelCreateArgs](#schemamodelcreateargs)|true|Model creation parameters.|

> Example responses

> 201 Response

```json
{
  "name": "string",
  "owner-tag": "string",
  "type": "string",
  "uuid": "string",
  "agent-version": {
    "Build": 0,
    "Major": 0,
    "Minor": 0,
    "Patch": 0,
    "Tag": "string"
  },
  "cloud-credential-tag": "string",
  "cloud-region": "string",
  "cloud-tag": "string",
  "controller-uuid": "string",
  "counts": [
    {
      "count": 0,
      "entity": "string"
    }
  ],
  "default-series": "string",
  "is-controller": true,
  "life": "string",
  "migration": {
    "end": "2019-08-24T14:15:22Z",
    "start": "2019-08-24T14:15:22Z",
    "status": "string"
  },
  "provider-type": "string",
  "sla": {
    "level": "string",
    "owner": "string"
  },
  "status": {
    "application-count": 0,
    "applications": [
      {
        "name": "string"
      }
    ],
    "error": {
      "code": "string",
      "info": {},
      "message": "string"
    },
    "filesystems": [
      {
        "detachable": true,
        "id": "string",
        "message": "string",
        "provider-id": "string",
        "status": "string"
      }
    ],
    "hosted-machine-count": 0,
    "life": "string",
    "machines": [
      {
        "display-name": "string",
        "ha-primary": true,
        "hardware": {
          "arch": "string",
          "availability-zone": "string",
          "cores": 0,
          "cpu-power": 0,
          "mem": 0,
          "root-disk": 0,
          "tags": [
            "string"
          ],
          "virt-type": "string"
        },
        "has-vote": true,
        "id": "string",
        "instance-id": "string",
        "message": "string",
        "status": "string",
        "wants-vote": true
      }
    ],
    "model-tag": "string",
    "owner-tag": "string",
    "type": "string",
    "unit-count": 0,
    "volumes": [
      {
        "detachable": true,
        "id": "string",
        "message": "string",
        "provider-id": "string",
        "status": "string"
      }
    ]
  },
  "user-access": "string",
  "cloud-credential-validity": true,
  "default-base": "string",
  "machines": [
    {
      "display-name": "string",
      "ha-primary": true,
      "hardware": {
        "arch": "string",
        "availability-zone": "string",
        "cores": 0,
        "cpu-power": 0,
        "mem": 0,
        "root-disk": 0,
        "tags": [
          "string"
        ],
        "virt-type": "string"
      },
      "has-vote": true,
      "id": "string",
      "instance-id": "string",
      "message": "string",
      "status": "string",
      "wants-vote": true
    }
  ],
  "secret-backends": [
    {
      "backend-type": "string",
      "config": {},
      "name": "string",
      "token-rotate-interval": 0
    }
  ],
  "supported-features": [
    {
      "description": "string",
      "name": "string",
      "version": "string"
    }
  ],
  "users": [
    {
      "access": "string",
      "display-name": "string",
      "last-connection": "2019-08-24T14:15:22Z",
      "model-tag": "string",
      "user": "string"
    }
  ]
}
```

<h3 id="createmodel-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Model created.|[ModelDetail](#schemamodeldetail)|

<aside class="success">
This operation does not require authentication
</aside>

## listModelDefaults

<a id="opIdlistModelDefaults"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://localhost:17777/api/v1/models/defaults \
  -H 'Accept: application/json'

```

```http
GET https://localhost:17777/api/v1/models/defaults HTTP/1.1
Host: localhost:17777
Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('https://localhost:17777/api/v1/models/defaults',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get 'https://localhost:17777/api/v1/models/defaults',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('https://localhost:17777/api/v1/models/defaults', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','https://localhost:17777/api/v1/models/defaults', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://localhost:17777/api/v1/models/defaults");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "https://localhost:17777/api/v1/models/defaults", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /models/defaults`

*List model defaults.*

Returns the model defaults for the specified clouds.

<h3 id="listmodeldefaults-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|clouds|query|array[string]|false|The clouds for which to fetch the model defaults.|

> Example responses

> 200 Response

```json
{
  "model-defaults": [
    {
      "controller": {},
      "default": {},
      "regions": [
        {
          "region-name": "string",
          "value": {}
        }
      ]
    }
  ]
}
```

<h3 id="listmodeldefaults-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List of model defaults for the specified clouds.|[ModelDefaultsList](#schemamodeldefaultslist)|

<aside class="success">
This operation does not require authentication
</aside>

## updateModelDefaults

<a id="opIdupdateModelDefaults"></a>

> Code samples

```shell
# You can also use wget
curl -X PATCH https://localhost:17777/api/v1/models/defaults \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
PATCH https://localhost:17777/api/v1/models/defaults HTTP/1.1
Host: localhost:17777
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "set": {},
  "unset": {}
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('https://localhost:17777/api/v1/models/defaults',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.patch 'https://localhost:17777/api/v1/models/defaults',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.patch('https://localhost:17777/api/v1/models/defaults', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','https://localhost:17777/api/v1/models/defaults', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("https://localhost:17777/api/v1/models/defaults");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "https://localhost:17777/api/v1/models/defaults", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /models/defaults`

*Update model defaults.*

Set or unset model defaults for a specified clouds.

Model default configuration settings are specific to the cloud on which the model is
deployed. If the controller hosts more than one cloud, the cloud (and optionally region)
must be specified

> Body parameter

```json
{
  "set": {},
  "unset": {}
}
```

<h3 id="updatemodeldefaults-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|cloud|query|array[string]|false|The clouds for which to update the model defaults.|
|cloud-region|query|array[string]|false|The clouds for which to fetch the model defaults.|
|body|body|[ModelDefaultsUpdate](#schemamodeldefaultsupdate)|true|An object describing those model details to set or unset|

> Example responses

> 200 Response

```json
{
  "model-defaults": [
    {
      "controller": {},
      "default": {},
      "regions": [
        {
          "region-name": "string",
          "value": {}
        }
      ]
    }
  ]
}
```

<h3 id="updatemodeldefaults-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|List of model defaults for the specified cloud.|[ModelDefaultsList](#schemamodeldefaultslist)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|Controller hosts more than one cloud but no cloud was specified.|[Error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

# Schemas

<h2 id="tocS_Error">Error</h2>
<!-- backwards compatibility -->
<a id="schemaerror"></a>
<a id="schema_Error"></a>
<a id="tocSerror"></a>
<a id="tocserror"></a>

```json
{
  "code": "string",
  "info": {},
  "message": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|code|string|true|none|none|
|info|object|false|none|none|
|message|string|true|none|none|

<h2 id="tocS_MachineHardware">MachineHardware</h2>
<!-- backwards compatibility -->
<a id="schemamachinehardware"></a>
<a id="schema_MachineHardware"></a>
<a id="tocSmachinehardware"></a>
<a id="tocsmachinehardware"></a>

```json
{
  "arch": "string",
  "availability-zone": "string",
  "cores": 0,
  "cpu-power": 0,
  "mem": 0,
  "root-disk": 0,
  "tags": [
    "string"
  ],
  "virt-type": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|arch|string|false|none|none|
|availability-zone|string|false|none|none|
|cores|integer|false|none|none|
|cpu-power|integer|false|none|none|
|mem|integer|false|none|none|
|root-disk|integer|false|none|none|
|tags|[string]|false|none|none|
|virt-type|string|false|none|none|

<h2 id="tocS_Model">Model</h2>
<!-- backwards compatibility -->
<a id="schemamodel"></a>
<a id="schema_Model"></a>
<a id="tocSmodel"></a>
<a id="tocsmodel"></a>

```json
{
  "name": "string",
  "owner-tag": "string",
  "type": "string",
  "uuid": "string",
  "agent-version": {
    "Build": 0,
    "Major": 0,
    "Minor": 0,
    "Patch": 0,
    "Tag": "string"
  },
  "cloud-credential-tag": "string",
  "cloud-region": "string",
  "cloud-tag": "string",
  "controller-uuid": "string",
  "counts": [
    {
      "count": 0,
      "entity": "string"
    }
  ],
  "default-series": "string",
  "is-controller": true,
  "life": "string",
  "migration": {
    "end": "2019-08-24T14:15:22Z",
    "start": "2019-08-24T14:15:22Z",
    "status": "string"
  },
  "provider-type": "string",
  "sla": {
    "level": "string",
    "owner": "string"
  },
  "status": {
    "application-count": 0,
    "applications": [
      {
        "name": "string"
      }
    ],
    "error": {
      "code": "string",
      "info": {},
      "message": "string"
    },
    "filesystems": [
      {
        "detachable": true,
        "id": "string",
        "message": "string",
        "provider-id": "string",
        "status": "string"
      }
    ],
    "hosted-machine-count": 0,
    "life": "string",
    "machines": [
      {
        "display-name": "string",
        "ha-primary": true,
        "hardware": {
          "arch": "string",
          "availability-zone": "string",
          "cores": 0,
          "cpu-power": 0,
          "mem": 0,
          "root-disk": 0,
          "tags": [
            "string"
          ],
          "virt-type": "string"
        },
        "has-vote": true,
        "id": "string",
        "instance-id": "string",
        "message": "string",
        "status": "string",
        "wants-vote": true
      }
    ],
    "model-tag": "string",
    "owner-tag": "string",
    "type": "string",
    "unit-count": 0,
    "volumes": [
      {
        "detachable": true,
        "id": "string",
        "message": "string",
        "provider-id": "string",
        "status": "string"
      }
    ]
  },
  "user-access": "string"
}

```

Detailed information about a given model.

### Properties

allOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[ModelSummary](#schemamodelsummary)|false|none|Basic identifying information about a given model.|

and

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|object|false|none|none|
|» agent-version|[Version](#schemaversion)|true|none|none|
|» cloud-credential-tag|string|false|none|none|
|» cloud-region|string|false|none|none|
|» cloud-tag|string|true|none|none|
|» controller-uuid|string|true|none|none|
|» counts|[[ModelEntityCount](#schemamodelentitycount)]|true|none|none|
|» default-series|string|false|none|none|
|» is-controller|boolean|true|none|none|
|» life|string|true|none|none|
|» migration|[ModelMigrationStatus](#schemamodelmigrationstatus)|false|none|Status information about a model migration, including start and finish time.|
|» provider-type|string|false|none|none|
|» sla|[ModelSLAInfo](#schemamodelslainfo)|true|none|none|
|» status|[ModelStatus](#schemamodelstatus)|false|none|none|
|» user-access|string|true|none|none|

<h2 id="tocS_ModelApplicationInfo">ModelApplicationInfo</h2>
<!-- backwards compatibility -->
<a id="schemamodelapplicationinfo"></a>
<a id="schema_ModelApplicationInfo"></a>
<a id="tocSmodelapplicationinfo"></a>
<a id="tocsmodelapplicationinfo"></a>

```json
{
  "name": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|none|

<h2 id="tocS_ModelCreateArgs">ModelCreateArgs</h2>
<!-- backwards compatibility -->
<a id="schemamodelcreateargs"></a>
<a id="schema_ModelCreateArgs"></a>
<a id="tocSmodelcreateargs"></a>
<a id="tocsmodelcreateargs"></a>

```json
{
  "cloud-tag": "string",
  "config": {},
  "credential": "string",
  "name": "string",
  "owner-tag": "string",
  "region": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|cloud-tag|string|false|none|none|
|config|object|false|none|none|
|credential|string|false|none|none|
|name|string|true|none|none|
|owner-tag|string|true|none|none|
|region|string|false|none|none|

<h2 id="tocS_ModelDefaultsList">ModelDefaultsList</h2>
<!-- backwards compatibility -->
<a id="schemamodeldefaultslist"></a>
<a id="schema_ModelDefaultsList"></a>
<a id="tocSmodeldefaultslist"></a>
<a id="tocsmodeldefaultslist"></a>

```json
{
  "model-defaults": [
    {
      "controller": {},
      "default": {},
      "regions": [
        {
          "region-name": "string",
          "value": {}
        }
      ]
    }
  ]
}

```

A list of model defaults for the specified clouds

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|model-defaults|[[ModelDefaults](#schemamodeldefaults)]|true|none|[Model defaults for a given cloud.]|

<h2 id="tocS_ModelDefaults">ModelDefaults</h2>
<!-- backwards compatibility -->
<a id="schemamodeldefaults"></a>
<a id="schema_ModelDefaults"></a>
<a id="tocSmodeldefaults"></a>
<a id="tocsmodeldefaults"></a>

```json
{
  "controller": {},
  "default": {},
  "regions": [
    {
      "region-name": "string",
      "value": {}
    }
  ]
}

```

Model defaults for a given cloud.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|controller|object|false|none|none|
|default|object|false|none|none|
|regions|[[RegionDefaults](#schemaregiondefaults)]|false|none|none|

<h2 id="tocS_ModelDetail">ModelDetail</h2>
<!-- backwards compatibility -->
<a id="schemamodeldetail"></a>
<a id="schema_ModelDetail"></a>
<a id="tocSmodeldetail"></a>
<a id="tocsmodeldetail"></a>

```json
{
  "name": "string",
  "owner-tag": "string",
  "type": "string",
  "uuid": "string",
  "agent-version": {
    "Build": 0,
    "Major": 0,
    "Minor": 0,
    "Patch": 0,
    "Tag": "string"
  },
  "cloud-credential-tag": "string",
  "cloud-region": "string",
  "cloud-tag": "string",
  "controller-uuid": "string",
  "counts": [
    {
      "count": 0,
      "entity": "string"
    }
  ],
  "default-series": "string",
  "is-controller": true,
  "life": "string",
  "migration": {
    "end": "2019-08-24T14:15:22Z",
    "start": "2019-08-24T14:15:22Z",
    "status": "string"
  },
  "provider-type": "string",
  "sla": {
    "level": "string",
    "owner": "string"
  },
  "status": {
    "application-count": 0,
    "applications": [
      {
        "name": "string"
      }
    ],
    "error": {
      "code": "string",
      "info": {},
      "message": "string"
    },
    "filesystems": [
      {
        "detachable": true,
        "id": "string",
        "message": "string",
        "provider-id": "string",
        "status": "string"
      }
    ],
    "hosted-machine-count": 0,
    "life": "string",
    "machines": [
      {
        "display-name": "string",
        "ha-primary": true,
        "hardware": {
          "arch": "string",
          "availability-zone": "string",
          "cores": 0,
          "cpu-power": 0,
          "mem": 0,
          "root-disk": 0,
          "tags": [
            "string"
          ],
          "virt-type": "string"
        },
        "has-vote": true,
        "id": "string",
        "instance-id": "string",
        "message": "string",
        "status": "string",
        "wants-vote": true
      }
    ],
    "model-tag": "string",
    "owner-tag": "string",
    "type": "string",
    "unit-count": 0,
    "volumes": [
      {
        "detachable": true,
        "id": "string",
        "message": "string",
        "provider-id": "string",
        "status": "string"
      }
    ]
  },
  "user-access": "string",
  "cloud-credential-validity": true,
  "default-base": "string",
  "machines": [
    {
      "display-name": "string",
      "ha-primary": true,
      "hardware": {
        "arch": "string",
        "availability-zone": "string",
        "cores": 0,
        "cpu-power": 0,
        "mem": 0,
        "root-disk": 0,
        "tags": [
          "string"
        ],
        "virt-type": "string"
      },
      "has-vote": true,
      "id": "string",
      "instance-id": "string",
      "message": "string",
      "status": "string",
      "wants-vote": true
    }
  ],
  "secret-backends": [
    {
      "backend-type": "string",
      "config": {},
      "name": "string",
      "token-rotate-interval": 0
    }
  ],
  "supported-features": [
    {
      "description": "string",
      "name": "string",
      "version": "string"
    }
  ],
  "users": [
    {
      "access": "string",
      "display-name": "string",
      "last-connection": "2019-08-24T14:15:22Z",
      "model-tag": "string",
      "user": "string"
    }
  ]
}

```

Detailed administrative information about a model

### Properties

allOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[Model](#schemamodel)|false|none|Detailed information about a given model.|

and

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|object|false|none|none|
|» cloud-credential-validity|boolean|false|none|none|
|» default-base|string|false|none|none|
|» machines|[[ModelMachine](#schemamodelmachine)]|true|none|none|
|» secret-backends|[[SecretBackend](#schemasecretbackend)]|true|none|none|
|» supported-features|[[SupportedFeature](#schemasupportedfeature)]|false|none|none|
|» users|[[ModelUserInfo](#schemamodeluserinfo)]|true|none|none|

<h2 id="tocS_ModelEntityCount">ModelEntityCount</h2>
<!-- backwards compatibility -->
<a id="schemamodelentitycount"></a>
<a id="schema_ModelEntityCount"></a>
<a id="tocSmodelentitycount"></a>
<a id="tocsmodelentitycount"></a>

```json
{
  "count": 0,
  "entity": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|count|integer|true|none|none|
|entity|string|true|none|none|

<h2 id="tocS_ModelFilesystemInfo">ModelFilesystemInfo</h2>
<!-- backwards compatibility -->
<a id="schemamodelfilesysteminfo"></a>
<a id="schema_ModelFilesystemInfo"></a>
<a id="tocSmodelfilesysteminfo"></a>
<a id="tocsmodelfilesysteminfo"></a>

```json
{
  "detachable": true,
  "id": "string",
  "message": "string",
  "provider-id": "string",
  "status": "string"
}

```

Represents a filesystem within the model.

### Properties

*None*

<h2 id="tocS_ModelMachine">ModelMachine</h2>
<!-- backwards compatibility -->
<a id="schemamodelmachine"></a>
<a id="schema_ModelMachine"></a>
<a id="tocSmodelmachine"></a>
<a id="tocsmodelmachine"></a>

```json
{
  "display-name": "string",
  "ha-primary": true,
  "hardware": {
    "arch": "string",
    "availability-zone": "string",
    "cores": 0,
    "cpu-power": 0,
    "mem": 0,
    "root-disk": 0,
    "tags": [
      "string"
    ],
    "virt-type": "string"
  },
  "has-vote": true,
  "id": "string",
  "instance-id": "string",
  "message": "string",
  "status": "string",
  "wants-vote": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|display-name|string|false|none|none|
|ha-primary|boolean|false|none|none|
|hardware|[MachineHardware](#schemamachinehardware)|false|none|none|
|has-vote|boolean|false|none|none|
|id|string|true|none|none|
|instance-id|string|false|none|none|
|message|string|false|none|none|
|status|string|false|none|none|
|wants-vote|boolean|false|none|none|

<h2 id="tocS_ModelMigrationStatus">ModelMigrationStatus</h2>
<!-- backwards compatibility -->
<a id="schemamodelmigrationstatus"></a>
<a id="schema_ModelMigrationStatus"></a>
<a id="tocSmodelmigrationstatus"></a>
<a id="tocsmodelmigrationstatus"></a>

```json
{
  "end": "2019-08-24T14:15:22Z",
  "start": "2019-08-24T14:15:22Z",
  "status": "string"
}

```

Status information about a model migration, including start and finish time.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|end|string(date-time)|false|none|none|
|start|string(date-time)|true|none|none|
|status|string|true|none|none|

<h2 id="tocS_ModelSLAInfo">ModelSLAInfo</h2>
<!-- backwards compatibility -->
<a id="schemamodelslainfo"></a>
<a id="schema_ModelSLAInfo"></a>
<a id="tocSmodelslainfo"></a>
<a id="tocsmodelslainfo"></a>

```json
{
  "level": "string",
  "owner": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|level|string|true|none|none|
|owner|string|true|none|none|

<h2 id="tocS_ModelStatus">ModelStatus</h2>
<!-- backwards compatibility -->
<a id="schemamodelstatus"></a>
<a id="schema_ModelStatus"></a>
<a id="tocSmodelstatus"></a>
<a id="tocsmodelstatus"></a>

```json
{
  "application-count": 0,
  "applications": [
    {
      "name": "string"
    }
  ],
  "error": {
    "code": "string",
    "info": {},
    "message": "string"
  },
  "filesystems": [
    {
      "detachable": true,
      "id": "string",
      "message": "string",
      "provider-id": "string",
      "status": "string"
    }
  ],
  "hosted-machine-count": 0,
  "life": "string",
  "machines": [
    {
      "display-name": "string",
      "ha-primary": true,
      "hardware": {
        "arch": "string",
        "availability-zone": "string",
        "cores": 0,
        "cpu-power": 0,
        "mem": 0,
        "root-disk": 0,
        "tags": [
          "string"
        ],
        "virt-type": "string"
      },
      "has-vote": true,
      "id": "string",
      "instance-id": "string",
      "message": "string",
      "status": "string",
      "wants-vote": true
    }
  ],
  "model-tag": "string",
  "owner-tag": "string",
  "type": "string",
  "unit-count": 0,
  "volumes": [
    {
      "detachable": true,
      "id": "string",
      "message": "string",
      "provider-id": "string",
      "status": "string"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|application-count|integer|true|none|none|
|applications|[[ModelApplicationInfo](#schemamodelapplicationinfo)]|false|none|none|
|error|[Error](#schemaerror)|false|none|none|
|filesystems|[[ModelFilesystemInfo](#schemamodelfilesysteminfo)]|false|none|[Represents a filesystem within the model.]|
|hosted-machine-count|integer|true|none|none|
|life|string|true|none|none|
|machines|[[ModelMachine](#schemamodelmachine)]|false|none|none|
|model-tag|string|true|none|none|
|owner-tag|string|true|none|none|
|type|string|true|none|none|
|unit-count|integer|true|none|none|
|volumes|[[ModelVolumeInfo](#schemamodelvolumeinfo)]|false|none|[Represents a volume within the model]|

<h2 id="tocS_ModelStorageAttributes">ModelStorageAttributes</h2>
<!-- backwards compatibility -->
<a id="schemamodelstorageattributes"></a>
<a id="schema_ModelStorageAttributes"></a>
<a id="tocSmodelstorageattributes"></a>
<a id="tocsmodelstorageattributes"></a>

```json
{
  "detachable": true,
  "id": "string",
  "message": "string",
  "provider-id": "string",
  "status": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|detachable|boolean|false|none|none|
|id|string|true|none|none|
|message|string|false|none|none|
|provider-id|string|false|none|none|
|status|string|false|none|none|

<h2 id="tocS_ModelSummary">ModelSummary</h2>
<!-- backwards compatibility -->
<a id="schemamodelsummary"></a>
<a id="schema_ModelSummary"></a>
<a id="tocSmodelsummary"></a>
<a id="tocsmodelsummary"></a>

```json
{
  "name": "string",
  "owner-tag": "string",
  "type": "string",
  "uuid": "string"
}

```

Basic identifying information about a given model.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|none|
|owner-tag|string|true|none|none|
|type|string|true|none|none|
|uuid|string|true|none|none|

<h2 id="tocS_ModelUserInfo">ModelUserInfo</h2>
<!-- backwards compatibility -->
<a id="schemamodeluserinfo"></a>
<a id="schema_ModelUserInfo"></a>
<a id="tocSmodeluserinfo"></a>
<a id="tocsmodeluserinfo"></a>

```json
{
  "access": "string",
  "display-name": "string",
  "last-connection": "2019-08-24T14:15:22Z",
  "model-tag": "string",
  "user": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|access|string|true|none|none|
|display-name|string|true|none|none|
|last-connection|string(date-time)|true|none|none|
|model-tag|string|true|none|none|
|user|string|true|none|none|

<h2 id="tocS_ModelVolumeInfo">ModelVolumeInfo</h2>
<!-- backwards compatibility -->
<a id="schemamodelvolumeinfo"></a>
<a id="schema_ModelVolumeInfo"></a>
<a id="tocSmodelvolumeinfo"></a>
<a id="tocsmodelvolumeinfo"></a>

```json
{
  "detachable": true,
  "id": "string",
  "message": "string",
  "provider-id": "string",
  "status": "string"
}

```

Represents a volume within the model

### Properties

*None*

<h2 id="tocS_RegionDefaults">RegionDefaults</h2>
<!-- backwards compatibility -->
<a id="schemaregiondefaults"></a>
<a id="schema_RegionDefaults"></a>
<a id="tocSregiondefaults"></a>
<a id="tocsregiondefaults"></a>

```json
{
  "region-name": "string",
  "value": {}
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|region-name|string|true|none|none|
|value|object|true|none|none|

<h2 id="tocS_SecretBackend">SecretBackend</h2>
<!-- backwards compatibility -->
<a id="schemasecretbackend"></a>
<a id="schema_SecretBackend"></a>
<a id="tocSsecretbackend"></a>
<a id="tocssecretbackend"></a>

```json
{
  "backend-type": "string",
  "config": {},
  "name": "string",
  "token-rotate-interval": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|backend-type|string|true|none|none|
|config|object|true|none|none|
|name|string|true|none|none|
|token-rotate-interval|integer|false|none|none|

<h2 id="tocS_ModelDefaultsUpdate">ModelDefaultsUpdate</h2>
<!-- backwards compatibility -->
<a id="schemamodeldefaultsupdate"></a>
<a id="schema_ModelDefaultsUpdate"></a>
<a id="tocSmodeldefaultsupdate"></a>
<a id="tocsmodeldefaultsupdate"></a>

```json
{
  "set": {},
  "unset": {}
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|set|object|true|none|Key/value pairs representing model defaults to set for the specified cloud.|
|unset|object|true|none|Key/value pairs representing model defaults to unset for the specified cloud.|

<h2 id="tocS_SupportedFeature">SupportedFeature</h2>
<!-- backwards compatibility -->
<a id="schemasupportedfeature"></a>
<a id="schema_SupportedFeature"></a>
<a id="tocSsupportedfeature"></a>
<a id="tocssupportedfeature"></a>

```json
{
  "description": "string",
  "name": "string",
  "version": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|description|string|true|none|none|
|name|string|true|none|none|
|version|string|false|none|none|

<h2 id="tocS_UserModel">UserModel</h2>
<!-- backwards compatibility -->
<a id="schemausermodel"></a>
<a id="schema_UserModel"></a>
<a id="tocSusermodel"></a>
<a id="tocsusermodel"></a>

```json
{
  "last-connection": "2019-08-24T14:15:22Z",
  "model": {
    "name": "string",
    "owner-tag": "string",
    "type": "string",
    "uuid": "string"
  }
}

```

A model that a given user has access to.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|last-connection|string(date-time)|true|none|none|
|model|any|true|none|none|

oneOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[ModelSummary](#schemamodelsummary)|false|none|Basic identifying information about a given model.|

xor

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[Model](#schemamodel)|false|none|Detailed information about a given model.|

<h2 id="tocS_UserModelList">UserModelList</h2>
<!-- backwards compatibility -->
<a id="schemausermodellist"></a>
<a id="schema_UserModelList"></a>
<a id="tocSusermodellist"></a>
<a id="tocsusermodellist"></a>

```json
{
  "user-models": [
    {
      "last-connection": "2019-08-24T14:15:22Z",
      "model": {
        "name": "string",
        "owner-tag": "string",
        "type": "string",
        "uuid": "string"
      }
    }
  ]
}

```

A list of models that a given user has access to.

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|user-models|[[UserModel](#schemausermodel)]|true|none|[A model that a given user has access to.]|

<h2 id="tocS_Version">Version</h2>
<!-- backwards compatibility -->
<a id="schemaversion"></a>
<a id="schema_Version"></a>
<a id="tocSversion"></a>
<a id="tocsversion"></a>

```json
{
  "Build": 0,
  "Major": 0,
  "Minor": 0,
  "Patch": 0,
  "Tag": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|Build|integer|true|none|none|
|Major|integer|true|none|none|
|Minor|integer|true|none|none|
|Patch|integer|true|none|none|
|Tag|string|true|none|none|

