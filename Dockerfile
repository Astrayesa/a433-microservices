# menggunakan image node:14 sebagai base image
FROM node:14

# mengubah working directory ke /app
WORKDIR /app

# copy semua file pada current directory ke working directory container
COPY . .

# set environment variable pada container
ENV NODE_ENV=production DB_HOST=item-db

# menjalankan command untuk menginstall node module kemudian melakukan build pada source code
RUN npm install --production --unsafe-perm && npm run build

# mengekspos port 8080 pada container
EXPOSE 8080

# memberikan label agar github pacakge terhubung dengan github reporsitory
LABEL org.opencontainers.image.source=https://github.com/Astrayesa/a433-microservices

# memberikan deskripsi image pada github package
LABEL org.opencontainers.image.description="Image untuk submission dicoding microservices"

# command yang dijalankan saat container dimulai
CMD [ "npm", "start" ]