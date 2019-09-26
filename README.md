# ec2-get-tag

`ec2-get-tag` is a one-liner that retrieves the value of a tag you set on your EC2 instance.

### 1. First add the following IAM policy to your EC2 instance:

```json
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

### 2. Now you can execute the following

```bash
curl -s https://raw.githubusercontent.com/saoudrizwan/ec2-get-tag/1.0/ec2-get-tag.sh | bash -s TAGNAME
```

## Sources

-   https://priocept.com/2017/02/14/aws-tag-retrieval-from-within-an-ec2-instance/
-   https://marcelog.github.io/articles/aws_get_tags_from_inside_instance_ec2.html
