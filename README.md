# Auto Scaling
> Auto Scaling Group in AWS.

Auto scaling group with aplication load balancer in a vpc with 2 subnets in 2 differents availability zones.

### Prerequisites

- terraform (version used v0.13.4)
- AWS account

On `~/.aws/credentials`
```
[default]
aws_access_key_id=YOUR_ACCESS_KEY_ID
aws_secret_access_key=YOUR_SECRET_ACCESS_KEY
```

## Deploy
```sh
./deploy.sh
```

## Connecting to your Linux instance using SSH
```sh
ssh -i ./private/key_access.pem -A ubuntu@[instance IP]
```

## Destroy
```sh
./down.sh
```