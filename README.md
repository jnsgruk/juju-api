# Juju REST API

> This is very much speculative, and a work in progress!

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
make serve
```

You can now see the newly designed spec at https://localhost:4567/ and the generated spec at
https://localhost:4567/generated.html

## Updating the schemas/sites

```shell
# Generate a naive OpenAPI spec from the Juju client facade schema
python3 tools/convert-juju-facade -i schemas/client-schemas.json -o schemas/generated.yaml

# Generate MD from the new, and the generated OpenAPI specs
make generate
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

| Facade               | Facade Call                     | API Path                                                                                     |
| :------------------- | :------------------------------ |:---------------------------------------------------------------------------------------------|
| Action               | Actions                         |                                                                                              |
| Action               | ApplicationsCharmsActions       |                                                                                              |
| Action               | Cancel                          |                                                                                              |
| Action               | EnqueueOperation                |                                                                                              |
| Action               | ListOperations                  |                                                                                              |
| Action               | Operations                      |                                                                                              |
| Action               | Run                             |                                                                                              |
| Action               | RunOnAllMachines                |                                                                                              |
| Action               | WatchActionsProgress            |                                                                                              |
| Admin                | Login                           |                                                                                              |
| Admin                | RedirectInfo                    |                                                                                              |
| AllModelWatcher      | Next                            |                                                                                              |
| AllModelWatcher      | Stop                            |                                                                                              |
| AllWatcher           | Next                            |                                                                                              |
| AllWatcher           | Stop                            |                                                                                              |
| Annotations          | Get                             |                                                                                              |
| Annotations          | Set                             |                                                                                              |
| Application          | AddRelation                     | `POST /integrate`                                                                            |
| Application          | AddUnits                        |                                                                                              |
| Application          | ApplicationsInfo                | `GET /model{model}/application/{application}`                                                |
| Application          | CharmConfig                     |                                                                                              |
| Application          | CharmRelations                  |                                                                                              |
| Application          | Consume                         |                                                                                              |
| Application          | Deploy                          |                                                                                              |
| Application          | DeployFromRepository            | `POST /model/{model}/application/{application}/deploy?force=false&dry-run=false&trust=false` |
| Application          | DestroyApplication              | `DELETE /model/{model}/application/{application}`                                            |
| Application          | DestroyConsumedApplications     |                                                                                              |
| Application          | DestroyRelation                 |                                                                                              |
| Application          | DestroyUnit                     |                                                                                              |
| Application          | Expose                          |                                                                                              |
| Application          | Get                             |                                                                                              |
| Application          | GetCharmURLOrigin               |                                                                                              |
| Application          | GetConfig                       |                                                                                              |
| Application          | GetConstraints                  |                                                                                              |
| Application          | Leader                          |                                                                                              |
| Application          | MergeBindings                   |                                                                                              |
| Application          | ResolveUnitErrors               |                                                                                              |
| Application          | ScaleApplications               |                                                                                              |
| Application          | SetCharm                        | `PATCH /model/{model}/application/{application}/refresh`                                     |
| Application          | SetConfigs                      |                                                                                              |
| Application          | SetConstraints                  |                                                                                              |
| Application          | SetMetricCredentials            |                                                                                              |
| Application          | SetRelationsSuspended           |                                                                                              |
| Application          | Unexpose                        |                                                                                              |
| Application          | UnitsInfo                       |                                                                                              |
| Application          | UnsetApplicationsConfig         |                                                                                              |
| Application          | UpdateApplicationBase           |                                                                                              |
| ApplicationOffers    | ApplicationOffers               |                                                                                              |
| ApplicationOffers    | DestroyOffers                   |                                                                                              |
| ApplicationOffers    | FindApplicationOffers           |                                                                                              |
| ApplicationOffers    | GetConsumeDetails               |                                                                                              |
| ApplicationOffers    | ListApplicationOffers           |                                                                                              |
| ApplicationOffers    | ModifyOfferAccess               |                                                                                              |
| ApplicationOffers    | Offer                           |                                                                                              |
| ApplicationOffers    | RemoteApplicationInfo           |                                                                                              |
| Backup               | Create                          |                                                                                              |
| Block                | List                            |                                                                                              |
| Block                | SwitchBlockOff                  |                                                                                              |
| Block                | SwitchBlockOn                   |                                                                                              |
| Bundle               | ExportBundle                    |                                                                                              |
| Bundle               | GetChanges                      |                                                                                              |
| Bundle               | GetChangesMapArgs               |                                                                                              |
| Charms               | AddCharm                        |                                                                                              |
| Charms               | CharmInfo                       |                                                                                              |
| Charms               | CheckCharmPlacement             |                                                                                              |
| Charms               | GetDownloadInfos                |                                                                                              |
| Charms               | IsMetered                       |                                                                                              |
| Charms               | List                            |                                                                                              |
| Charms               | ListCharmResources              |                                                                                              |
| Charms               | ResolveCharms                   |                                                                                              |
| Client               | FindTools                       |                                                                                              |
| Client               | FullStatus                      |                                                                                              |
| Client               | StatusHistory                   |                                                                                              |
| Client               | WatchAll                        |                                                                                              |
| Cloud                | AddCloud                        | `POST /clouds`                                                                               |
| Cloud                | AddCredentials                  |                                                                                              |
| Cloud                | CheckCredentialsModels          |                                                                                              |
| Cloud                | Cloud                           | `GET /cloud/{cloud}`                                                                         |
| Cloud                | CloudInfo                       | `GET /cloud/{cloud}`                                                                         |
| Cloud                | Clouds                          | `GET /clouds/supported`                                                                      |
| Cloud                | Credential                      |                                                                                              |
| Cloud                | CredentialContents              |                                                                                              |
| Cloud                | InstanceTypes                   |                                                                                              |
| Cloud                | ListCloudInfo                   | `GET /clouds`                                                                                |
| Cloud                | ModifyCloudAccess               | `PATCH /cloud/{cloud}/access`                                                                |
| Cloud                | RemoveClouds                    | `DELETE /cloud/{cloud}`                                                                      |
| Cloud                | RevokeCredentialsCheckModels    |                                                                                              |
| Cloud                | UpdateCloud                     |                                                                                              |
| Cloud                | UpdateCredentialsCheckModels    |                                                                                              |
| Cloud                | UserCredentials                 |                                                                                              |
| Controller           | AllModels                       |                                                                                              |
| Controller           | CloudSpec                       |                                                                                              |
| Controller           | ConfigSet                       |                                                                                              |
| Controller           | ControllerAPIInfoForModels      |                                                                                              |
| Controller           | ControllerConfig                |                                                                                              |
| Controller           | ControllerVersion               |                                                                                              |
| Controller           | DashboardConnectionInfo         |                                                                                              |
| Controller           | DestroyController               |                                                                                              |
| Controller           | GetCloudSpec                    |                                                                                              |
| Controller           | GetControllerAccess             |                                                                                              |
| Controller           | HostedModelConfigs              |                                                                                              |
| Controller           | IdentityProviderURL             |                                                                                              |
| Controller           | InitiateMigration               |                                                                                              |
| Controller           | ListBlockedModels               |                                                                                              |
| Controller           | ModelConfig                     |                                                                                              |
| Controller           | ModelStatus                     |                                                                                              |
| Controller           | ModifyControllerAccess          |                                                                                              |
| Controller           | MongoVersion                    |                                                                                              |
| Controller           | RemoveBlocks                    |                                                                                              |
| Controller           | WatchAllModelSummaries          |                                                                                              |
| Controller           | WatchAllModels                  |                                                                                              |
| Controller           | WatchCloudSpecsChanges          |                                                                                              |
| Controller           | WatchModelSummaries             |                                                                                              |
| CredentialManager    | InvalidateModelCredential       |                                                                                              |
| FirewallRules        | ListFirewallRules               |                                                                                              |
| FirewallRules        | SetFirewallRules                |                                                                                              |
| HighAvailability     | EnableHA                        |                                                                                              |
| ImageMetaDataManager | Delete                          |                                                                                              |
| ImageMetaDataManager | List                            |                                                                                              |
| ImageMetaDataManager | Save                            |                                                                                              |
| KeyManager           | AddKeys                         |                                                                                              |
| KeyManager           | DeleteKeys                      |                                                                                              |
| KeyManager           | ImportKeys                      |                                                                                              |
| KeyManager           | ListKeys                        |                                                                                              |
| MachineManager       | AddMachines                     |                                                                                              |
| MachineManager       | DestroyMachineWithParams        |                                                                                              |
| MachineManager       | GetUpgradeSeriesMessages        |                                                                                              |
| MachineManager       | InstanceTypes                   |                                                                                              |
| MachineManager       | ProvisioningScript              |                                                                                              |
| MachineManager       | RetryProvisioning               |                                                                                              |
| MachineManager       | UpgradeSeriesComplete           |                                                                                              |
| MachineManager       | UpgradeSeriesPrepare            |                                                                                              |
| MachineManager       | UpgradeSeriesValidate           |                                                                                              |
| MachineManager       | WatchUpgradeSeriesNotifications |                                                                                              |
| MetricsDebug         | GetMetrics                      |                                                                                              |
| MetricsDebug         | SetMeterStatus                  |                                                                                              |
| ModelConfig          | GetModelConstraints             |                                                                                              |
| ModelConfig          | ModelGet                        |                                                                                              |
| ModelConfig          | ModelSet                        |                                                                                              |
| ModelConfig          | ModelUnset                      |                                                                                              |
| ModelConfig          | SLALevel                        |                                                                                              |
| ModelConfig          | Sequences                       |                                                                                              |
| ModelConfig          | SetModelConstraints             |                                                                                              |
| ModelConfig          | SetSLALevel                     |                                                                                              |
| ModelGeneration      | AbortBranch                     |                                                                                              |
| ModelGeneration      | AddBranch                       |                                                                                              |
| ModelGeneration      | BranchInfo                      |                                                                                              |
| ModelGeneration      | CommitBranch                    |                                                                                              |
| ModelGeneration      | HasActiveBranch                 |                                                                                              |
| ModelGeneration      | ListCommits                     |                                                                                              |
| ModelGeneration      | ShowCommit                      |                                                                                              |
| ModelGeneration      | TrackBranch                     |                                                                                              |
| ModelManager         | ChangeModelCredential           | `PATCH /model/{model}/credential`                                                            |
| ModelManager         | CreateModel                     | `POST /models`                                                                               |
| ModelManager         | DestroyModels                   | `DELETE /model/{model}`                                                                      |
| ModelManager         | DumpModels                      | `GET /models?detailed=true&all=true`                                                         |
| ModelManager         | DumpModelsDB                    | N/A                                                                                          |
| ModelManager         | ListModelSummaries              | `GET /models?detailed=true`                                                                  |
| ModelManager         | ListModels                      | `GET /models`                                                                                |
| ModelManager         | ModelDefaultsForClouds          | `GET /models/defaults`                                                                       |
| ModelManager         | ModelInfo                       | `GET /model/{model}`                                                                         |
| ModelManager         | ModelStatus                     | `GET /model/{model}/status`                                                                  |
| ModelManager         | ModifyModelAccess               | `PATCH /model/{model}/access`                                                                |
| ModelManager         | SetModelDefaults                | `PATCH /models/defaults`                                                                     |
| ModelManager         | UnsetModelDefaults              | `PATCH /models/defaults`                                                                     |
| ModelUpgrader        | AbortModelUpgrade               |                                                                                              |
| ModelUpgrader        | UpgradeModel                    |                                                                                              |
| Payloads             | List                            |                                                                                              |
| Pinger               | Ping                            |                                                                                              |
| Pinger               | Stop                            |                                                                                              |
| Resources            | AddPendingResources             |                                                                                              |
| Resources            | ListResources                   |                                                                                              |
| SSHClient            | AllAddresses                    |                                                                                              |
| SSHClient            | ModelCredentialForSSH           |                                                                                              |
| SSHClient            | PrivateAddress                  |                                                                                              |
| SSHClient            | Proxy                           |                                                                                              |
| SSHClient            | PublicAddress                   |                                                                                              |
| SSHClient            | PublicKeys                      |                                                                                              |
| SecretBackends       | AddSecretBackends               |                                                                                              |
| SecretBackends       | ListSecretBackends              |                                                                                              |
| SecretBackends       | RemoveSecretBackends            |                                                                                              |
| SecretBackends       | UpdateSecretBackends            |                                                                                              |
| Secrets              | ListSecrets                     |                                                                                              |
| Spaces               | CreateSpaces                    |                                                                                              |
| Spaces               | ListSpaces                      |                                                                                              |
| Spaces               | MoveSubnets                     |                                                                                              |
| Spaces               | ReloadSpaces                    |                                                                                              |
| Spaces               | RemoveSpace                     |                                                                                              |
| Spaces               | RenameSpace                     |                                                                                              |
| Spaces               | ShowSpace                       |                                                                                              |
| Storage              | AddToUnit                       |                                                                                              |
| Storage              | Attach                          |                                                                                              |
| Storage              | CreatePool                      |                                                                                              |
| Storage              | DetachStorage                   |                                                                                              |
| Storage              | Import                          |                                                                                              |
| Storage              | ListFilesystems                 |                                                                                              |
| Storage              | ListPools                       |                                                                                              |
| Storage              | ListStorageDetails              |                                                                                              |
| Storage              | ListVolumes                     |                                                                                              |
| Storage              | Remove                          |                                                                                              |
| Storage              | RemovePool                      |                                                                                              |
| Storage              | StorageDetails                  |                                                                                              |
| Storage              | UpdatePool                      |                                                                                              |
| Subnets              | AllZones                        |                                                                                              |
| Subnets              | ListSubnets                     |                                                                                              |
| Subnets              | SubnetsByCIDR                   |                                                                                              |
| UserManager          | AddUser                         | `POST /users`                                                                                |
| UserManager          | DisableUser                     | `PATCH /user/{user}`                                                                         |
| UserManager          | EnableUser                      | `PATCH /user/{user}`                                                                         |
| UserManager          | ModelUserInfo                   | `GET /models?user={user}`                                                                    |
| UserManager          | RemoveUser                      | `DELETE /user/{user}`                                                                        |
| UserManager          | ResetPassword                   | `PATCH /user/{user}`                                                                         |
| UserManager          | SetPassword                     | `PATCH /user/{user}`                                                                         |
| UserManager          | UserInfo                        | `GET /user/{user}`                                                                           |
