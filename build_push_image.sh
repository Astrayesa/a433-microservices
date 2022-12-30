# build image berdasarkan Dockerfile pada directory saat ini
docker build -t item-app:v1 .

# melihat daftar image lokal
docker images

# mengubah nama image untuk di-push ke container registry github
docker tag item-app:v1 ghcr.io/astrayesa/item-app:v1

# login ke github untuk push image ke container registry
echo $CR_PAT | docker login ghcr.io -u astrayesa --password-stdin

# push image ke github package
docker push ghcr.io/astrayesa/item-app:v1
