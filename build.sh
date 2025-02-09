# Stop and remove existing container if it exists
docker stop shop-con 
docker rm shop-con

# Remove unused data
docker system prune -f

# Remove the old image
docker rmi shop-img 

# Build a new image
docker build --no-cache -f dockerfile -t shop-img .

# Run a new container
docker run -p 3001:3001 -v "$(pwd)":/app shop-img

docker logs shop-con