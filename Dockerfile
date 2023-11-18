#2.Krijoni nje file me emrin Dockerfile ne direktorine ku jeni.
#2.1 Krijoni nje imazh ubuntu me version 16.04 edhe beni update imazhit brenda Dockerfile,duke perdorur RUN
#2.2 Instaloni httpd brenda imazhit duke perdoru komande RUN brenda ne Dockerfile
#2.3 Beni build Dockerfile duke i vene secili emrin e vet
#2.4 Beni push image ne docker hub
#2.5 Beni remove image qe keni lokalisht ne server
#2.6 Krijoni nje container nga imazhi qe keni bere push ne docker hub edhe expozojeni ne porten 8080
#2.7 Hapni nga browseri i laptopit edhe shifeni ne qofe se ju hapet faqja by default e apache. 


# Step 2.1: Create Ubuntu 16.04 image and update
FROM ubuntu:16.04
RUN apt-get update

# Step 2.2: Install httpd
RUN apt-get install -y apache2

# Step 2.3: Build Dockerfile
# Replace 'image_name' with the image name, e.g., image_name:16.04
docker build -t image_name .

# Step 2.4: Push the image to Docker Hub
# Replace 'your_username' with your Docker Hub username
docker push your_username/image_name

# Step 2.5: Remove the local image
# Replace 'image_name' with the image name you want to remove
docker image rm image_name

# Replace 'image_name' and 'container_name' with the image and container names
docker run -d -p 8080:80 --name container_name your_username/image_name

# Step 2.7: Open a browser on your laptop and enter the following in the address bar:
http://localhost:8080
