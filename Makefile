build:
	aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin ${aws_id}.dkr.ecr.ap-northeast-1.amazonaws.com
	docker build --platform linux/amd64 -t test-squid .
	docker tag test-squid:latest ${aws_id}.dkr.ecr.ap-northeast-1.amazonaws.com/test-squid:latest
	docker push ${aws_id}.dkr.ecr.ap-northeast-1.amazonaws.com/test-squid:latest

