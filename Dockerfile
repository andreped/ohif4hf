FROM ohif/app:v3.7.0-beta.74

# first set user as root to add new user (then later change to user)
USER root

# Set up a new user named "user" with user ID 1000
# RUN useradd -m -u 1000 user
RUN adduser -D -u 1000 "user"

# Switch to the "user" user
USER user

# Set port as environmental variable for reverse proxy
ENV PORT=8080

# Set home to the user's home directory
ENV HOME=/home/user \
	PATH=/home/user/.local/bin:$PATH

# Set the working directory to the user's home directory
WORKDIR $HOME/app

# Copy the current directory contents into the container at $HOME/app setting the owner to the user
COPY --chown=user . $HOME/app

RUN ls

# change to nginx user
USER nginx

#CMD ["docker-compose", "-f", "/code/dsa/docker-compose.yml", "up", "-d"]

# ENTRYPOINT ["sh", "/docker-entrypoint.sh"]

# reverse proxy server
EXPOSE 3000
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
