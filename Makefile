version =

build:
	docker build --tag remedyproduct/aws_eks_tools:latest .

deploy: build
	docker tag remedyproduct/aws_eks_tools:latest remedyproduct/aws_eks_tools:$(version)
	docker push remedyproduct/aws_eks_tools:latest
	docker push remedyproduct/aws_eks_tools:$(version)

stats: build
	docker run --rm --platform linux/amd64 remedyproduct/aws_eks_tools:latest show-stats
