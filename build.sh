docker build -t bia .
aws ecr get-login-password --region us-east-2 --profile bia | docker login --username AWS --password-stdin 001723946945.dkr.ecr.us-east-2.amazonaws.com
docker tag bia:latest 001723946945.dkr.ecr.us-east-2.amazonaws.com/bia:latest
docker push 001723946945.dkr.ecr.us-east-2.amazonaws.com/bia:latest