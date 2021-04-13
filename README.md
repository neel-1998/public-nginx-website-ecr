# nginx-website-ecr

This repository is designed to push a simple nginx server into AWS ECR. You can configure the index page by editing the `index.html` file.

## Usage
1. Clone this repository for private use.

2. Setup your repository so that there is a webhook for CircleCI.

3. Set up your CircleCI pipeline so that these environment variables exist:

    | Variable                       | Description                                               |
    | ------------------------------ | --------------------------------------------------------- |
    | `AWS_ACCESS_KEY_ID`            | Used by the AWS CLI                                       |
    | `AWS_SECRET_ACCESS_KEY `       | Used by the AWS CLI                                       |
    | `AWS_REGION`           | Used by the AWS CLI. Example value: `eu-west-2`                        |
    | `AWS_ECR_ACCOUNT_URL`               | AWS ECR URI. Example value: `<aws_account_number>.dkr.ecr.<aws_region>.amazonaws.com`                                   |
    | `AWS_ECR_REPO_NAME`     | Name of the ECR repository to store the Docker Image. Example value: `docker-images` |
    | `TAG_NAME`     | Tag Name of the Docker Image in the ECR repository. Example value: `nginx-web` |

    All `AWS` variables must be created in the AWS console.
    - The IAM user attached to the pipeline will need permissions to access and write to the ECR.
    - It is assumed that the repository being written to in the ECR already exists.

4. Generate a build.

5. Finish - the Docker Image should exist in the ECR repository specified.