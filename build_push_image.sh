# build image berdasarkan Dockerfile pada directory saat ini
docker build -t ghcr.io/astrayesa/karsajobs-ui:latest .

# login ke github untuk push image ke container registry
echo $CR_PAT | docker login ghcr.io -u astrayesa --password-stdin

# push image ke github package
docker push ghcr.io/astrayesa/karsajobs-ui:latest
