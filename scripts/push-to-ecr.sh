#!/usr/bin/sh

aws ecr get-login-password --region ${AWS_REGION} | docker login --username AWS --password-stdin ${AWS_ECR_ACCOUNT_URL}
docker tag html-nginx-${CIRCLE_BUILD_NUM} ${AWS_ECR_ACCOUNT_URL}/${AWS_ECR_REPO_NAME}:${TAG_NAME}-${CIRCLE_BUILD_NUM}
docker push ${AWS_ECR_ACCOUNT_URL}/${AWS_ECR_REPO_NAME}:${TAG_NAME}-${CIRCLE_BUILD_NUM}