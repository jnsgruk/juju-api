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
  - <a href="http://juju.is/docs">Find out more about Juju</a>
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

<h1 id="juju-client-api-model">model</h1>

Manage Juju models

<a href="https://juju.is/docs/olm/manage-models">Find out more about</a>

## listModels

<a id="opIdlistModels"></a>

> Code samples

```shell
# You can also use wget
curl -X GET https://localhost:17777/api/v1/models \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
GET https://localhost:17777/api/v1/models HTTP/1.1
Host: localhost:17777
Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "entities": [
    {
      "tag": "string"
    }
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('https://localhost:17777/api/v1/models',
{
  method: 'GET',
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

result = RestClient.get 'https://localhost:17777/api/v1/models',
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

r = requests.get('https://localhost:17777/api/v1/models', headers = headers)

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
        "Content-Type": []string{"application/json"},
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

> Body parameter

```json
{
  "entities": [
    {
      "tag": "string"
    }
  ]
}
```

<h3 id="listmodels-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|tags|query|array[string]|false|none|
|body|body|[Entities](#schemaentities)|true|List of entities|

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
curl -X POST https://localhost:17777/api/v1/model \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST https://localhost:17777/api/v1/model HTTP/1.1
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

fetch('https://localhost:17777/api/v1/model',
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

result = RestClient.post 'https://localhost:17777/api/v1/model',
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

r = requests.post('https://localhost:17777/api/v1/model', headers = headers)

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
    $response = $client->request('POST','https://localhost:17777/api/v1/model', array(
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
URL obj = new URL("https://localhost:17777/api/v1/model");
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
    req, err := http.NewRequest("POST", "https://localhost:17777/api/v1/model", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /model`

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
|body|body|[ModelCreateArgs](#schemamodelcreateargs)|true|Model creation arguments|

> Example responses

> 200 Response

```json
{
  "agent-version": {
    "Build": 0,
    "Major": 0,
    "Minor": 0,
    "Patch": 0,
    "Tag": "string"
  },
  "cloud-credential-tag": "string",
  "cloud-credential-validity": true,
  "cloud-region": "string",
  "cloud-tag": "string",
  "controller-uuid": "string",
  "default-base": "string",
  "default-series": "string",
  "is-controller": true,
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
  "migration": {
    "end": "2019-08-24T14:15:22Z",
    "start": "2019-08-24T14:15:22Z",
    "status": "string"
  },
  "name": "string",
  "owner-tag": "string",
  "provider-type": "string",
  "secret-backends": [
    {
      "error": {
        "code": "string",
        "info": {},
        "message": "string"
      },
      "id": "string",
      "message": "string",
      "num-secrets": 0,
      "result": {
        "backend-type": "string",
        "config": {},
        "name": "string",
        "token-rotate-interval": 0
      },
      "status": "string"
    }
  ],
  "sla": {
    "level": "string",
    "owner": "string"
  },
  "status": {
    "data": {},
    "info": "string",
    "since": "2019-08-24T14:15:22Z",
    "status": "string"
  },
  "supported-features": [
    {
      "description": "string",
      "name": "string",
      "version": "string"
    }
  ],
  "type": "string",
  "users": [
    {
      "access": "string",
      "display-name": "string",
      "last-connection": "2019-08-24T14:15:22Z",
      "model-tag": "string",
      "user": "string"
    }
  ],
  "uuid": "string"
}
```

<h3 id="createmodel-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Model created|[ModelInfo](#schemamodelinfo)|

<aside class="success">
This operation does not require authentication
</aside>

# Schemas

<h2 id="tocS_ChangeModelCredentialParams">ChangeModelCredentialParams</h2>
<!-- backwards compatibility -->
<a id="schemachangemodelcredentialparams"></a>
<a id="schema_ChangeModelCredentialParams"></a>
<a id="tocSchangemodelcredentialparams"></a>
<a id="tocschangemodelcredentialparams"></a>

```json
{
  "credential-tag": "string",
  "model-tag": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|credential-tag|string|true|none|none|
|model-tag|string|true|none|none|

<h2 id="tocS_ChangeModelCredentialsParams">ChangeModelCredentialsParams</h2>
<!-- backwards compatibility -->
<a id="schemachangemodelcredentialsparams"></a>
<a id="schema_ChangeModelCredentialsParams"></a>
<a id="tocSchangemodelcredentialsparams"></a>
<a id="tocschangemodelcredentialsparams"></a>

```json
{
  "model-credentials": [
    {
      "credential-tag": "string",
      "model-tag": "string"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|model-credentials|[[ChangeModelCredentialParams](#schemachangemodelcredentialparams)]|true|none|none|

<h2 id="tocS_DestroyModelParams">DestroyModelParams</h2>
<!-- backwards compatibility -->
<a id="schemadestroymodelparams"></a>
<a id="schema_DestroyModelParams"></a>
<a id="tocSdestroymodelparams"></a>
<a id="tocsdestroymodelparams"></a>

```json
{
  "destroy-storage": true,
  "force": true,
  "max-wait": 0,
  "model-tag": "string",
  "timeout": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|destroy-storage|boolean|false|none|none|
|force|boolean|false|none|none|
|max-wait|integer|false|none|none|
|model-tag|string|true|none|none|
|timeout|integer|false|none|none|

<h2 id="tocS_DestroyModelsParams">DestroyModelsParams</h2>
<!-- backwards compatibility -->
<a id="schemadestroymodelsparams"></a>
<a id="schema_DestroyModelsParams"></a>
<a id="tocSdestroymodelsparams"></a>
<a id="tocsdestroymodelsparams"></a>

```json
{
  "models": [
    {
      "destroy-storage": true,
      "force": true,
      "max-wait": 0,
      "model-tag": "string",
      "timeout": 0
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|models|[[DestroyModelParams](#schemadestroymodelparams)]|true|none|none|

<h2 id="tocS_DumpModelRequest">DumpModelRequest</h2>
<!-- backwards compatibility -->
<a id="schemadumpmodelrequest"></a>
<a id="schema_DumpModelRequest"></a>
<a id="tocSdumpmodelrequest"></a>
<a id="tocsdumpmodelrequest"></a>

```json
{
  "entities": [
    {
      "tag": "string"
    }
  ],
  "simplified": true
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|entities|[[Entity](#schemaentity)]|true|none|none|
|simplified|boolean|true|none|none|

<h2 id="tocS_Entities">Entities</h2>
<!-- backwards compatibility -->
<a id="schemaentities"></a>
<a id="schema_Entities"></a>
<a id="tocSentities"></a>
<a id="tocsentities"></a>

```json
{
  "entities": [
    {
      "tag": "string"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|entities|[[Entity](#schemaentity)]|true|none|none|

<h2 id="tocS_Entity">Entity</h2>
<!-- backwards compatibility -->
<a id="schemaentity"></a>
<a id="schema_Entity"></a>
<a id="tocSentity"></a>
<a id="tocsentity"></a>

```json
{
  "tag": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|tag|string|true|none|none|

<h2 id="tocS_EntityStatus">EntityStatus</h2>
<!-- backwards compatibility -->
<a id="schemaentitystatus"></a>
<a id="schema_EntityStatus"></a>
<a id="tocSentitystatus"></a>
<a id="tocsentitystatus"></a>

```json
{
  "data": {},
  "info": "string",
  "since": "2019-08-24T14:15:22Z",
  "status": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|data|object|false|none|none|
|» .*|object|false|none|none|
|info|string|true|none|none|
|since|string(date-time)|true|none|none|
|status|string|true|none|none|

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
|» .*|object|false|none|none|
|message|string|true|none|none|

<h2 id="tocS_ErrorResult">ErrorResult</h2>
<!-- backwards compatibility -->
<a id="schemaerrorresult"></a>
<a id="schema_ErrorResult"></a>
<a id="tocSerrorresult"></a>
<a id="tocserrorresult"></a>

```json
{
  "error": {
    "code": "string",
    "info": {},
    "message": "string"
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|error|[Error](#schemaerror)|false|none|none|

<h2 id="tocS_ErrorResults">ErrorResults</h2>
<!-- backwards compatibility -->
<a id="schemaerrorresults"></a>
<a id="schema_ErrorResults"></a>
<a id="tocSerrorresults"></a>
<a id="tocserrorresults"></a>

```json
{
  "results": [
    {
      "error": {
        "code": "string",
        "info": {},
        "message": "string"
      }
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|results|[[ErrorResult](#schemaerrorresult)]|true|none|none|

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

<h2 id="tocS_MapResult">MapResult</h2>
<!-- backwards compatibility -->
<a id="schemamapresult"></a>
<a id="schema_MapResult"></a>
<a id="tocSmapresult"></a>
<a id="tocsmapresult"></a>

```json
{
  "error": {
    "code": "string",
    "info": {},
    "message": "string"
  },
  "result": {}
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|error|[Error](#schemaerror)|false|none|none|
|result|object|true|none|none|
|» .*|object|false|none|none|

<h2 id="tocS_MapResults">MapResults</h2>
<!-- backwards compatibility -->
<a id="schemamapresults"></a>
<a id="schema_MapResults"></a>
<a id="tocSmapresults"></a>
<a id="tocsmapresults"></a>

```json
{
  "results": [
    {
      "error": {
        "code": "string",
        "info": {},
        "message": "string"
      },
      "result": {}
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|results|[[MapResult](#schemamapresult)]|true|none|none|

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
  "uuid": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|none|
|owner-tag|string|true|none|none|
|type|string|true|none|none|
|uuid|string|true|none|none|

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
|» .*|object|false|none|none|
|credential|string|false|none|none|
|name|string|true|none|none|
|owner-tag|string|true|none|none|
|region|string|false|none|none|

<h2 id="tocS_ModelDefaultValues">ModelDefaultValues</h2>
<!-- backwards compatibility -->
<a id="schemamodeldefaultvalues"></a>
<a id="schema_ModelDefaultValues"></a>
<a id="tocSmodeldefaultvalues"></a>
<a id="tocsmodeldefaultvalues"></a>

```json
{
  "cloud-region": "string",
  "cloud-tag": "string",
  "config": {}
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|cloud-region|string|false|none|none|
|cloud-tag|string|false|none|none|
|config|object|true|none|none|
|» .*|object|false|none|none|

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

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|controller|object|false|none|none|
|default|object|false|none|none|
|regions|[[RegionDefaults](#schemaregiondefaults)]|false|none|none|

<h2 id="tocS_ModelDefaultsResult">ModelDefaultsResult</h2>
<!-- backwards compatibility -->
<a id="schemamodeldefaultsresult"></a>
<a id="schema_ModelDefaultsResult"></a>
<a id="tocSmodeldefaultsresult"></a>
<a id="tocsmodeldefaultsresult"></a>

```json
{
  "config": {},
  "error": {
    "code": "string",
    "info": {},
    "message": "string"
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|config|object|true|none|none|
|» .*|[ModelDefaults](#schemamodeldefaults)|false|none|none|
|error|[Error](#schemaerror)|false|none|none|

<h2 id="tocS_ModelDefaultsResults">ModelDefaultsResults</h2>
<!-- backwards compatibility -->
<a id="schemamodeldefaultsresults"></a>
<a id="schema_ModelDefaultsResults"></a>
<a id="tocSmodeldefaultsresults"></a>
<a id="tocsmodeldefaultsresults"></a>

```json
{
  "results": [
    {
      "config": {},
      "error": {
        "code": "string",
        "info": {},
        "message": "string"
      }
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|results|[[ModelDefaultsResult](#schemamodeldefaultsresult)]|true|none|none|

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

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|detachable|boolean|false|none|none|
|id|string|true|none|none|
|message|string|false|none|none|
|provider-id|string|false|none|none|
|status|string|false|none|none|

<h2 id="tocS_ModelInfo">ModelInfo</h2>
<!-- backwards compatibility -->
<a id="schemamodelinfo"></a>
<a id="schema_ModelInfo"></a>
<a id="tocSmodelinfo"></a>
<a id="tocsmodelinfo"></a>

```json
{
  "agent-version": {
    "Build": 0,
    "Major": 0,
    "Minor": 0,
    "Patch": 0,
    "Tag": "string"
  },
  "cloud-credential-tag": "string",
  "cloud-credential-validity": true,
  "cloud-region": "string",
  "cloud-tag": "string",
  "controller-uuid": "string",
  "default-base": "string",
  "default-series": "string",
  "is-controller": true,
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
  "migration": {
    "end": "2019-08-24T14:15:22Z",
    "start": "2019-08-24T14:15:22Z",
    "status": "string"
  },
  "name": "string",
  "owner-tag": "string",
  "provider-type": "string",
  "secret-backends": [
    {
      "error": {
        "code": "string",
        "info": {},
        "message": "string"
      },
      "id": "string",
      "message": "string",
      "num-secrets": 0,
      "result": {
        "backend-type": "string",
        "config": {},
        "name": "string",
        "token-rotate-interval": 0
      },
      "status": "string"
    }
  ],
  "sla": {
    "level": "string",
    "owner": "string"
  },
  "status": {
    "data": {},
    "info": "string",
    "since": "2019-08-24T14:15:22Z",
    "status": "string"
  },
  "supported-features": [
    {
      "description": "string",
      "name": "string",
      "version": "string"
    }
  ],
  "type": "string",
  "users": [
    {
      "access": "string",
      "display-name": "string",
      "last-connection": "2019-08-24T14:15:22Z",
      "model-tag": "string",
      "user": "string"
    }
  ],
  "uuid": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|agent-version|[Number](#schemanumber)|true|none|none|
|cloud-credential-tag|string|false|none|none|
|cloud-credential-validity|boolean|false|none|none|
|cloud-region|string|false|none|none|
|cloud-tag|string|true|none|none|
|controller-uuid|string|true|none|none|
|default-base|string|false|none|none|
|default-series|string|false|none|none|
|is-controller|boolean|true|none|none|
|life|string|true|none|none|
|machines|[[ModelMachineInfo](#schemamodelmachineinfo)]|true|none|none|
|migration|[ModelMigrationStatus](#schemamodelmigrationstatus)|false|none|none|
|name|string|true|none|none|
|owner-tag|string|true|none|none|
|provider-type|string|false|none|none|
|secret-backends|[[SecretBackendResult](#schemasecretbackendresult)]|true|none|none|
|sla|[ModelSLAInfo](#schemamodelslainfo)|true|none|none|
|status|[EntityStatus](#schemaentitystatus)|false|none|none|
|supported-features|[[SupportedFeature](#schemasupportedfeature)]|false|none|none|
|type|string|true|none|none|
|users|[[ModelUserInfo](#schemamodeluserinfo)]|true|none|none|
|uuid|string|true|none|none|

<h2 id="tocS_ModelInfoResult">ModelInfoResult</h2>
<!-- backwards compatibility -->
<a id="schemamodelinforesult"></a>
<a id="schema_ModelInfoResult"></a>
<a id="tocSmodelinforesult"></a>
<a id="tocsmodelinforesult"></a>

```json
{
  "error": {
    "code": "string",
    "info": {},
    "message": "string"
  },
  "result": {
    "agent-version": {
      "Build": 0,
      "Major": 0,
      "Minor": 0,
      "Patch": 0,
      "Tag": "string"
    },
    "cloud-credential-tag": "string",
    "cloud-credential-validity": true,
    "cloud-region": "string",
    "cloud-tag": "string",
    "controller-uuid": "string",
    "default-base": "string",
    "default-series": "string",
    "is-controller": true,
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
    "migration": {
      "end": "2019-08-24T14:15:22Z",
      "start": "2019-08-24T14:15:22Z",
      "status": "string"
    },
    "name": "string",
    "owner-tag": "string",
    "provider-type": "string",
    "secret-backends": [
      {
        "error": {
          "code": "string",
          "info": {},
          "message": "string"
        },
        "id": "string",
        "message": "string",
        "num-secrets": 0,
        "result": {
          "backend-type": "string",
          "config": {},
          "name": "string",
          "token-rotate-interval": 0
        },
        "status": "string"
      }
    ],
    "sla": {
      "level": "string",
      "owner": "string"
    },
    "status": {
      "data": {},
      "info": "string",
      "since": "2019-08-24T14:15:22Z",
      "status": "string"
    },
    "supported-features": [
      {
        "description": "string",
        "name": "string",
        "version": "string"
      }
    ],
    "type": "string",
    "users": [
      {
        "access": "string",
        "display-name": "string",
        "last-connection": "2019-08-24T14:15:22Z",
        "model-tag": "string",
        "user": "string"
      }
    ],
    "uuid": "string"
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|error|[Error](#schemaerror)|false|none|none|
|result|[ModelInfo](#schemamodelinfo)|false|none|none|

<h2 id="tocS_ModelInfoResults">ModelInfoResults</h2>
<!-- backwards compatibility -->
<a id="schemamodelinforesults"></a>
<a id="schema_ModelInfoResults"></a>
<a id="tocSmodelinforesults"></a>
<a id="tocsmodelinforesults"></a>

```json
{
  "results": [
    {
      "error": {
        "code": "string",
        "info": {},
        "message": "string"
      },
      "result": {
        "agent-version": {
          "Build": 0,
          "Major": 0,
          "Minor": 0,
          "Patch": 0,
          "Tag": "string"
        },
        "cloud-credential-tag": "string",
        "cloud-credential-validity": true,
        "cloud-region": "string",
        "cloud-tag": "string",
        "controller-uuid": "string",
        "default-base": "string",
        "default-series": "string",
        "is-controller": true,
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
        "migration": {
          "end": "2019-08-24T14:15:22Z",
          "start": "2019-08-24T14:15:22Z",
          "status": "string"
        },
        "name": "string",
        "owner-tag": "string",
        "provider-type": "string",
        "secret-backends": [
          {
            "error": {
              "code": "string",
              "info": {},
              "message": "string"
            },
            "id": "string",
            "message": "string",
            "num-secrets": 0,
            "result": {
              "backend-type": "string",
              "config": {},
              "name": "string",
              "token-rotate-interval": 0
            },
            "status": "string"
          }
        ],
        "sla": {
          "level": "string",
          "owner": "string"
        },
        "status": {
          "data": {},
          "info": "string",
          "since": "2019-08-24T14:15:22Z",
          "status": "string"
        },
        "supported-features": [
          {
            "description": "string",
            "name": "string",
            "version": "string"
          }
        ],
        "type": "string",
        "users": [
          {
            "access": "string",
            "display-name": "string",
            "last-connection": "2019-08-24T14:15:22Z",
            "model-tag": "string",
            "user": "string"
          }
        ],
        "uuid": "string"
      }
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|results|[[ModelInfoResult](#schemamodelinforesult)]|true|none|none|

<h2 id="tocS_ModelMachineInfo">ModelMachineInfo</h2>
<!-- backwards compatibility -->
<a id="schemamodelmachineinfo"></a>
<a id="schema_ModelMachineInfo"></a>
<a id="tocSmodelmachineinfo"></a>
<a id="tocsmodelmachineinfo"></a>

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
|filesystems|[[ModelFilesystemInfo](#schemamodelfilesysteminfo)]|false|none|none|
|hosted-machine-count|integer|true|none|none|
|life|string|true|none|none|
|machines|[[ModelMachineInfo](#schemamodelmachineinfo)]|false|none|none|
|model-tag|string|true|none|none|
|owner-tag|string|true|none|none|
|type|string|true|none|none|
|unit-count|integer|true|none|none|
|volumes|[[ModelVolumeInfo](#schemamodelvolumeinfo)]|false|none|none|

<h2 id="tocS_ModelStatusResults">ModelStatusResults</h2>
<!-- backwards compatibility -->
<a id="schemamodelstatusresults"></a>
<a id="schema_ModelStatusResults"></a>
<a id="tocSmodelstatusresults"></a>
<a id="tocsmodelstatusresults"></a>

```json
{
  "models": [
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
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|models|[[ModelStatus](#schemamodelstatus)]|true|none|none|

<h2 id="tocS_ModelSummariesRequest">ModelSummariesRequest</h2>
<!-- backwards compatibility -->
<a id="schemamodelsummariesrequest"></a>
<a id="schema_ModelSummariesRequest"></a>
<a id="tocSmodelsummariesrequest"></a>
<a id="tocsmodelsummariesrequest"></a>

```json
{
  "all": true,
  "user-tag": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|all|boolean|false|none|none|
|user-tag|string|true|none|none|

<h2 id="tocS_ModelSummary">ModelSummary</h2>
<!-- backwards compatibility -->
<a id="schemamodelsummary"></a>
<a id="schema_ModelSummary"></a>
<a id="tocSmodelsummary"></a>
<a id="tocsmodelsummary"></a>

```json
{
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
  "last-connection": "2019-08-24T14:15:22Z",
  "life": "string",
  "migration": {
    "end": "2019-08-24T14:15:22Z",
    "start": "2019-08-24T14:15:22Z",
    "status": "string"
  },
  "name": "string",
  "owner-tag": "string",
  "provider-type": "string",
  "sla": {
    "level": "string",
    "owner": "string"
  },
  "status": {
    "data": {},
    "info": "string",
    "since": "2019-08-24T14:15:22Z",
    "status": "string"
  },
  "type": "string",
  "user-access": "string",
  "uuid": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|agent-version|[Number](#schemanumber)|true|none|none|
|cloud-credential-tag|string|false|none|none|
|cloud-region|string|false|none|none|
|cloud-tag|string|true|none|none|
|controller-uuid|string|true|none|none|
|counts|[[ModelEntityCount](#schemamodelentitycount)]|true|none|none|
|default-series|string|false|none|none|
|is-controller|boolean|true|none|none|
|last-connection|string(date-time)|true|none|none|
|life|string|true|none|none|
|migration|[ModelMigrationStatus](#schemamodelmigrationstatus)|false|none|none|
|name|string|true|none|none|
|owner-tag|string|true|none|none|
|provider-type|string|false|none|none|
|sla|[ModelSLAInfo](#schemamodelslainfo)|true|none|none|
|status|[EntityStatus](#schemaentitystatus)|false|none|none|
|type|string|true|none|none|
|user-access|string|true|none|none|
|uuid|string|true|none|none|

<h2 id="tocS_ModelSummaryResult">ModelSummaryResult</h2>
<!-- backwards compatibility -->
<a id="schemamodelsummaryresult"></a>
<a id="schema_ModelSummaryResult"></a>
<a id="tocSmodelsummaryresult"></a>
<a id="tocsmodelsummaryresult"></a>

```json
{
  "error": {
    "code": "string",
    "info": {},
    "message": "string"
  },
  "result": {
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
    "last-connection": "2019-08-24T14:15:22Z",
    "life": "string",
    "migration": {
      "end": "2019-08-24T14:15:22Z",
      "start": "2019-08-24T14:15:22Z",
      "status": "string"
    },
    "name": "string",
    "owner-tag": "string",
    "provider-type": "string",
    "sla": {
      "level": "string",
      "owner": "string"
    },
    "status": {
      "data": {},
      "info": "string",
      "since": "2019-08-24T14:15:22Z",
      "status": "string"
    },
    "type": "string",
    "user-access": "string",
    "uuid": "string"
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|error|[Error](#schemaerror)|false|none|none|
|result|[ModelSummary](#schemamodelsummary)|false|none|none|

<h2 id="tocS_ModelSummaryResults">ModelSummaryResults</h2>
<!-- backwards compatibility -->
<a id="schemamodelsummaryresults"></a>
<a id="schema_ModelSummaryResults"></a>
<a id="tocSmodelsummaryresults"></a>
<a id="tocsmodelsummaryresults"></a>

```json
{
  "results": [
    {
      "error": {
        "code": "string",
        "info": {},
        "message": "string"
      },
      "result": {
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
        "last-connection": "2019-08-24T14:15:22Z",
        "life": "string",
        "migration": {
          "end": "2019-08-24T14:15:22Z",
          "start": "2019-08-24T14:15:22Z",
          "status": "string"
        },
        "name": "string",
        "owner-tag": "string",
        "provider-type": "string",
        "sla": {
          "level": "string",
          "owner": "string"
        },
        "status": {
          "data": {},
          "info": "string",
          "since": "2019-08-24T14:15:22Z",
          "status": "string"
        },
        "type": "string",
        "user-access": "string",
        "uuid": "string"
      }
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|results|[[ModelSummaryResult](#schemamodelsummaryresult)]|true|none|none|

<h2 id="tocS_ModelUnsetKeys">ModelUnsetKeys</h2>
<!-- backwards compatibility -->
<a id="schemamodelunsetkeys"></a>
<a id="schema_ModelUnsetKeys"></a>
<a id="tocSmodelunsetkeys"></a>
<a id="tocsmodelunsetkeys"></a>

```json
{
  "cloud-region": "string",
  "cloud-tag": "string",
  "keys": [
    "string"
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|cloud-region|string|false|none|none|
|cloud-tag|string|false|none|none|
|keys|[string]|true|none|none|

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

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|detachable|boolean|false|none|none|
|id|string|true|none|none|
|message|string|false|none|none|
|provider-id|string|false|none|none|
|status|string|false|none|none|

<h2 id="tocS_ModifyModelAccess">ModifyModelAccess</h2>
<!-- backwards compatibility -->
<a id="schemamodifymodelaccess"></a>
<a id="schema_ModifyModelAccess"></a>
<a id="tocSmodifymodelaccess"></a>
<a id="tocsmodifymodelaccess"></a>

```json
{
  "access": "string",
  "action": "string",
  "model-tag": "string",
  "user-tag": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|access|string|true|none|none|
|action|string|true|none|none|
|model-tag|string|true|none|none|
|user-tag|string|true|none|none|

<h2 id="tocS_ModifyModelAccessRequest">ModifyModelAccessRequest</h2>
<!-- backwards compatibility -->
<a id="schemamodifymodelaccessrequest"></a>
<a id="schema_ModifyModelAccessRequest"></a>
<a id="tocSmodifymodelaccessrequest"></a>
<a id="tocsmodifymodelaccessrequest"></a>

```json
{
  "changes": [
    {
      "access": "string",
      "action": "string",
      "model-tag": "string",
      "user-tag": "string"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|changes|[[ModifyModelAccess](#schemamodifymodelaccess)]|true|none|none|

<h2 id="tocS_Number">Number</h2>
<!-- backwards compatibility -->
<a id="schemanumber"></a>
<a id="schema_Number"></a>
<a id="tocSnumber"></a>
<a id="tocsnumber"></a>

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
|» .*|object|false|none|none|
|name|string|true|none|none|
|token-rotate-interval|integer|false|none|none|

<h2 id="tocS_SecretBackendResult">SecretBackendResult</h2>
<!-- backwards compatibility -->
<a id="schemasecretbackendresult"></a>
<a id="schema_SecretBackendResult"></a>
<a id="tocSsecretbackendresult"></a>
<a id="tocssecretbackendresult"></a>

```json
{
  "error": {
    "code": "string",
    "info": {},
    "message": "string"
  },
  "id": "string",
  "message": "string",
  "num-secrets": 0,
  "result": {
    "backend-type": "string",
    "config": {},
    "name": "string",
    "token-rotate-interval": 0
  },
  "status": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|error|[Error](#schemaerror)|false|none|none|
|id|string|true|none|none|
|message|string|false|none|none|
|num-secrets|integer|true|none|none|
|result|[SecretBackend](#schemasecretbackend)|true|none|none|
|status|string|true|none|none|

<h2 id="tocS_SetModelDefaults">SetModelDefaults</h2>
<!-- backwards compatibility -->
<a id="schemasetmodeldefaults"></a>
<a id="schema_SetModelDefaults"></a>
<a id="tocSsetmodeldefaults"></a>
<a id="tocssetmodeldefaults"></a>

```json
{
  "config": [
    {
      "cloud-region": "string",
      "cloud-tag": "string",
      "config": {}
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|config|[[ModelDefaultValues](#schemamodeldefaultvalues)]|true|none|none|

<h2 id="tocS_StringResult">StringResult</h2>
<!-- backwards compatibility -->
<a id="schemastringresult"></a>
<a id="schema_StringResult"></a>
<a id="tocSstringresult"></a>
<a id="tocsstringresult"></a>

```json
{
  "error": {
    "code": "string",
    "info": {},
    "message": "string"
  },
  "result": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|error|[Error](#schemaerror)|false|none|none|
|result|string|true|none|none|

<h2 id="tocS_StringResults">StringResults</h2>
<!-- backwards compatibility -->
<a id="schemastringresults"></a>
<a id="schema_StringResults"></a>
<a id="tocSstringresults"></a>
<a id="tocsstringresults"></a>

```json
{
  "results": [
    {
      "error": {
        "code": "string",
        "info": {},
        "message": "string"
      },
      "result": "string"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|results|[[StringResult](#schemastringresult)]|true|none|none|

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

<h2 id="tocS_UnsetModelDefaults">UnsetModelDefaults</h2>
<!-- backwards compatibility -->
<a id="schemaunsetmodeldefaults"></a>
<a id="schema_UnsetModelDefaults"></a>
<a id="tocSunsetmodeldefaults"></a>
<a id="tocsunsetmodeldefaults"></a>

```json
{
  "keys": [
    {
      "cloud-region": "string",
      "cloud-tag": "string",
      "keys": [
        "string"
      ]
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|keys|[[ModelUnsetKeys](#schemamodelunsetkeys)]|true|none|none|

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

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|last-connection|string(date-time)|true|none|none|
|model|[Model](#schemamodel)|true|none|none|

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

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|user-models|[[UserModel](#schemausermodel)]|true|none|none|

