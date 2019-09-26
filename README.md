# ec2-get-tag

First add the following IAM policy to your EC2 instance:

```
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "ec2:DescribeTags",
      "Resource": "*"
    }
  ]
}
```

## Sources

-   https://priocept.com/2017/02/14/aws-tag-retrieval-from-within-an-ec2-instance/
