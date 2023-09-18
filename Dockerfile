FROM ohif/app:v3.7.0-beta.74

# Set up a new user named "user" with user ID 1000
#RUN useradd -m -u 1000 user

# Switch to the "user" user
#USER user

# Set home to the user's home directory
ENV HOME=/home/user \
	PATH=/home/user/.local/bin:$PATH

# Set the working directory to the user's home directory
WORKDIR $HOME/app

RUN ls

#CMD ["docker-compose", "-f", "/code/dsa/docker-compose.yml", "up", "-d"]

CMD ["nginx", "-g", "daemon off;"]
