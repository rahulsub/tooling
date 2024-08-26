# Create docker and n8n folders in home directory
mkdir -p $HOME/docker/n8n

sudo docker stop n8n || true && sudo docker rm n8n || true
sudo docker run -d \
  --name n8n \
  --restart=unless-stopped \
  -e TZ=IN \
  -v $HOME/docker/n8n:/home/node/.n8n \
  -p 5678:5678 \
  -e N8N_SECURE_COOKIE=false \
  docker.n8n.io/n8nio/n8n