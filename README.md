Azure Function app - basic deployment with Terraform

```
az login
<note tenant id & subscription id>
 az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/<subscription id>"
<note appid and secret>
```

Create a file `env` with contents as below:

```
ARM_CLIENT_ID = "<appid>"
ARM_CLIENT_SECRET = "<appsecret>"
ARM_SUBSCRIPTION_ID = "<subscription id>"
ARM_TENANT_ID = "<tenant id>"
```
Run `loadenv.ps1`
