# Juju REST API

This repository serves to assist with a WIP design for a new RESTful Juju client API.

The existing API surface for Juju is rather large, and the aim here is to design a new client API,
and not intervene with the controller <-> controller APIs or controller <-> agent APIs.

## Getting Started

Assuming you have a working NodeJS and Python environment set up:

```shell
# Clone the repo
git clone https://github.com/jnsgruk/juju-api
cd juju-api

# Serve the site(s) using Docker
npm run serve
```

You can now see the newly designed spec at https://localhost:4567/ and the generated spec at
https://localhost:4567/generated.html

## Updating the schemas/sites

```shell
# Generate a naive OpenAPI spec from the Juju client facade schema
python3 tools/convert-juju-facade -i schemas/client-schemas.json -o schemas/generated.yaml

# Generate MD from the new, and the generated OpenAPI specs
npm run generate
```

## Generating Juju schema files

You can find the _client facades_ in [./schemas/client-schemas.json](./schemas/client-schemas.json).

These were generated like so:

```shell
git clone https://github.com/juju/juju
cd juju/generate/schemagen

# This will output the file client-facades.json
go run schemagen.go -admin-facades -facade-group client ./schemas/client-schemas.json
```

### Progress

This table tracks progress through the redesign of the Juju client API:

| Facade               | Facade Call                     | API Path                    |
| :------------------- | :------------------------------ | :-------------------------- |
| Action               | Actions                         |                             |
| Action               | ApplicationsCharmsActions       |                             |
| Action               | Cancel                          |                             |
| Action               | EnqueueOperation                |                             |
| Action               | ListOperations                  |                             |
| Action               | Operations                      |                             |
| Action               | Run                             |                             |
| Action               | RunOnAllMachines                |                             |
| Action               | WatchActionsProgress            |                             |
| Admin                | Login                           |                             |
| Admin                | RedirectInfo                    |                             |
| AllModelWatcher      | Next                            |                             |
| AllModelWatcher      | Stop                            |                             |
| AllWatcher           | Next                            |                             |
| AllWatcher           | Stop                            |                             |
| Annotations          | Get                             |                             |
| Annotations          | Set                             |                             |
| Application          | AddRelation                     |                             |
| Application          | AddUnits                        |                             |
| Application          | ApplicationsInfo                |                             |
| Application          | CharmConfig                     |                             |
| Application          | CharmRelations                  |                             |
| Application          | Consume                         |                             |
| Application          | Deploy                          |                             |
| Application          | DeployFromRepository            |                             |
| Application          | DestroyApplication              |                             |
| Application          | DestroyConsumedApplications     |                             |
| Application          | DestroyRelation                 |                             |
| Application          | DestroyUnit                     |                             |
| Application          | Expose                          |                             |
| Application          | Get                             |                             |
| Application          | GetCharmURLOrigin               |                             |
| Application          | GetConfig                       |                             |
| Application          | GetConstraints                  |                             |
| Application          | Leader                          |                             |
| Application          | MergeBindings                   |                             |
| Application          | ResolveUnitErrors               |                             |
| Application          | ScaleApplications               |                             |
| Application          | SetCharm                        |                             |
| Application          | SetConfigs                      |                             |
| Application          | SetConstraints                  |                             |
| Application          | SetMetricCredentials            |                             |
| Application          | SetRelationsSuspended           |                             |
| Application          | Unexpose                        |                             |
| Application          | UnitsInfo                       |                             |
| Application          | UnsetApplicationsConfig         |                             |
| Application          | UpdateApplicationBase           |                             |
| ApplicationOffers    | ApplicationOffers               |                             |
| ApplicationOffers    | DestroyOffers                   |                             |
| ApplicationOffers    | FindApplicationOffers           |                             |
| ApplicationOffers    | GetConsumeDetails               |                             |
| ApplicationOffers    | ListApplicationOffers           |                             |
| ApplicationOffers    | ModifyOfferAccess               |                             |
| ApplicationOffers    | Offer                           |                             |
| ApplicationOffers    | RemoteApplicationInfo           |                             |
| Backup               | Create                          |                             |
| Block                | List                            |                             |
| Block                | SwitchBlockOff                  |                             |
| Block                | SwitchBlockOn                   |                             |
| Bundle               | ExportBundle                    |                             |
| Bundle               | GetChanges                      |                             |
| Bundle               | GetChangesMapArgs               |                             |
| Charms               | AddCharm                        |                             |
| Charms               | CharmInfo                       |                             |
| Charms               | CheckCharmPlacement             |                             |
| Charms               | GetDownloadInfos                |                             |
| Charms               | IsMetered                       |                             |
| Charms               | List                            |                             |
| Charms               | ListCharmResources              |                             |
| Charms               | ResolveCharms                   |                             |
| Client               | FindTools                       |                             |
| Client               | FullStatus                      |                             |
| Client               | StatusHistory                   |                             |
| Client               | WatchAll                        |                             |
| Cloud                | AddCloud                        |                             |
| Cloud                | AddCredentials                  |                             |
| Cloud                | CheckCredentialsModels          |                             |
| Cloud                | Cloud                           |                             |
| Cloud                | CloudInfo                       |                             |
| Cloud                | Clouds                          |                             |
| Cloud                | Credential                      |                             |
| Cloud                | CredentialContents              |                             |
| Cloud                | InstanceTypes                   |                             |
| Cloud                | ListCloudInfo                   |                             |
| Cloud                | ModifyCloudAccess               |                             |
| Cloud                | RemoveClouds                    |                             |
| Cloud                | RevokeCredentialsCheckModels    |                             |
| Cloud                | UpdateCloud                     |                             |
| Cloud                | UpdateCredentialsCheckModels    |                             |
| Cloud                | UserCredentials                 |                             |
| Controller           | AllModels                       |                             |
| Controller           | CloudSpec                       |                             |
| Controller           | ConfigSet                       |                             |
| Controller           | ControllerAPIInfoForModels      |                             |
| Controller           | ControllerConfig                |                             |
| Controller           | ControllerVersion               |                             |
| Controller           | DashboardConnectionInfo         |                             |
| Controller           | DestroyController               |                             |
| Controller           | GetCloudSpec                    |                             |
| Controller           | GetControllerAccess             |                             |
| Controller           | HostedModelConfigs              |                             |
| Controller           | IdentityProviderURL             |                             |
| Controller           | InitiateMigration               |                             |
| Controller           | ListBlockedModels               |                             |
| Controller           | ModelConfig                     |                             |
| Controller           | ModelStatus                     |                             |
| Controller           | ModifyControllerAccess          |                             |
| Controller           | MongoVersion                    |                             |
| Controller           | RemoveBlocks                    |                             |
| Controller           | WatchAllModelSummaries          |                             |
| Controller           | WatchAllModels                  |                             |
| Controller           | WatchCloudSpecsChanges          |                             |
| Controller           | WatchModelSummaries             |                             |
| CredentialManager    | InvalidateModelCredential       |                             |
| FirewallRules        | ListFirewallRules               |                             |
| FirewallRules        | SetFirewallRules                |                             |
| HighAvailability     | EnableHA                        |                             |
| ImageMetaDataManager | Delete                          |                             |
| ImageMetaDataManager | List                            |                             |
| ImageMetaDataManager | Save                            |                             |
| KeyManager           | AddKeys                         |                             |
| KeyManager           | DeleteKeys                      |                             |
| KeyManager           | ImportKeys                      |                             |
| KeyManager           | ListKeys                        |                             |
| MachineManager       | AddMachines                     |                             |
| MachineManager       | DestroyMachineWithParams        |                             |
| MachineManager       | GetUpgradeSeriesMessages        |                             |
| MachineManager       | InstanceTypes                   |                             |
| MachineManager       | ProvisioningScript              |                             |
| MachineManager       | RetryProvisioning               |                             |
| MachineManager       | UpgradeSeriesComplete           |                             |
| MachineManager       | UpgradeSeriesPrepare            |                             |
| MachineManager       | UpgradeSeriesValidate           |                             |
| MachineManager       | WatchUpgradeSeriesNotifications |                             |
| MetricsDebug         | GetMetrics                      |                             |
| MetricsDebug         | SetMeterStatus                  |                             |
| ModelConfig          | GetModelConstraints             |                             |
| ModelConfig          | ModelGet                        |                             |
| ModelConfig          | ModelSet                        |                             |
| ModelConfig          | ModelUnset                      |                             |
| ModelConfig          | SLALevel                        |                             |
| ModelConfig          | Sequences                       |                             |
| ModelConfig          | SetModelConstraints             |                             |
| ModelConfig          | SetSLALevel                     |                             |
| ModelGeneration      | AbortBranch                     |                             |
| ModelGeneration      | AddBranch                       |                             |
| ModelGeneration      | BranchInfo                      |                             |
| ModelGeneration      | CommitBranch                    |                             |
| ModelGeneration      | HasActiveBranch                 |                             |
| ModelGeneration      | ListCommits                     |                             |
| ModelGeneration      | ShowCommit                      |                             |
| ModelGeneration      | TrackBranch                     |                             |
| ModelManager         | ChangeModelCredential           |                             |
| ModelManager         | CreateModel                     | `POST /models`              |
| ModelManager         | DestroyModels                   | `DELETE /model/{name}`      |
| ModelManager         | DumpModels                      |                             |
| ModelManager         | DumpModelsDB                    |                             |
| ModelManager         | ListModelSummaries              | `GET /models?detailed=true` |
| ModelManager         | ListModels                      | `GET /models`               |
| ModelManager         | ModelDefaultsForClouds          | `GET /models/defaults`      |
| ModelManager         | ModelInfo                       | `GET /model/{name}`         |
| ModelManager         | ModelStatus                     | `GET /model/{name}/status`  |
| ModelManager         | ModifyModelAccess               |                             |
| ModelManager         | SetModelDefaults                | `PATCH /models/defaults`    |
| ModelManager         | UnsetModelDefaults              | `PATCH /models/defaults`    |
| ModelUpgrader        | AbortModelUpgrade               |                             |
| ModelUpgrader        | UpgradeModel                    |                             |
| Payloads             | List                            |                             |
| Pinger               | Ping                            |                             |
| Pinger               | Stop                            |                             |
| Resources            | AddPendingResources             |                             |
| Resources            | ListResources                   |                             |
| SSHClient            | AllAddresses                    |                             |
| SSHClient            | ModelCredentialForSSH           |                             |
| SSHClient            | PrivateAddress                  |                             |
| SSHClient            | Proxy                           |                             |
| SSHClient            | PublicAddress                   |                             |
| SSHClient            | PublicKeys                      |                             |
| SecretBackends       | AddSecretBackends               |                             |
| SecretBackends       | ListSecretBackends              |                             |
| SecretBackends       | RemoveSecretBackends            |                             |
| SecretBackends       | UpdateSecretBackends            |                             |
| Secrets              | ListSecrets                     |                             |
| Spaces               | CreateSpaces                    |                             |
| Spaces               | ListSpaces                      |                             |
| Spaces               | MoveSubnets                     |                             |
| Spaces               | ReloadSpaces                    |                             |
| Spaces               | RemoveSpace                     |                             |
| Spaces               | RenameSpace                     |                             |
| Spaces               | ShowSpace                       |                             |
| Storage              | AddToUnit                       |                             |
| Storage              | Attach                          |                             |
| Storage              | CreatePool                      |                             |
| Storage              | DetachStorage                   |                             |
| Storage              | Import                          |                             |
| Storage              | ListFilesystems                 |                             |
| Storage              | ListPools                       |                             |
| Storage              | ListStorageDetails              |                             |
| Storage              | ListVolumes                     |                             |
| Storage              | Remove                          |                             |
| Storage              | RemovePool                      |                             |
| Storage              | StorageDetails                  |                             |
| Storage              | UpdatePool                      |                             |
| Subnets              | AllZones                        |                             |
| Subnets              | ListSubnets                     |                             |
| Subnets              | SubnetsByCIDR                   |                             |
| UserManager          | AddUser                         |                             |
| UserManager          | DisableUser                     |                             |
| UserManager          | EnableUser                      |                             |
| UserManager          | ModelUserInfo                   |                             |
| UserManager          | RemoveUser                      |                             |
| UserManager          | ResetPassword                   |                             |
| UserManager          | SetPassword                     |                             |
| UserManager          | UserInfo                        |                             |

### Renamed Schemas

- `Model` -> `ModelSummary`
- `ModelMachineInfo` -> `ModelMachine`
- `ModelSummary` -> `Model`
- `ModelInfo` -> `ModelDetail`
- `Number` -> `Version`
- `SetModelDefaults` -> `NewModelDefaults`

### Review Notes

- [ ] `ModelFilesystemInfo` and `ModelVolumeInfo` have the same fields
  - Created `ModelStorageAttributes` and made the existing schemas inherit for now
- [ ] `Model` has a `status` attribute which _was_ an `EntityStatus` - changed to `ModelStatus`
- [ ] Quite a significant change to the model defaults update
  - No longer using two separate endpoints
  - Now one single endpoint that takes cloud/region as (optional) query params
  - Request body contains an object with {set: {}, unset: {}}
