# AWS 

`aws ec2 help`

## Environment setup

### Installing the AWS CLI 

```
pip install awscli
aws --version
```

### Configuring AWS CLI 

`aws configure`

```
AWS Access Key ID [None]: AKIAIOSFODNN7EXAMPLE
AWS Secret Access Key [None]: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
Default region name [None]: eu-central-1
Default output format [None]: json
```

## Operations 

#### List instances 
`aws ec2 describe-instances --filters "Name=tag:Creator,Values=ts054"`

#### Start/Stop/Reboot/Terminate
```
aws ec2 start-instances --instance-ids <instance-id>
aws ec2 stop-instances --instance-ids <instance-id>
aws ec2 reboot-instances --instance-ids <instance-id>
aws ec2 terminate-instances --instance-ids <instance-id>
```

