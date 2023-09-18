FROM ohif/app:v3.7.0-beta.74

# first set user as root to add new user (then later change to user)
USER root

# To install usermod in Alpine Linux
#RUN echo http://dl-2.alpinelinux.org/alpine/edge/community/ >> /etc/apk/repositories
#RUN apk add -U shadow

# change user ID of "nginx" to 1000 to work with HF spaces
# RUN find / -uid 1000 -exec chown -h 1000 {} +
#RUN usermod -u 1000 nginx

USER nginx

# Set port as environmental variable for reverse proxy
# ENV PORT=80

RUN ls

# Set home to the user's home directory
ENV HOME=/home/user \
	PATH=/home/user/.local/bin:$PATH

# Set the working directory to the user's home directory
WORKDIR $HOME/app

# Copy the current directory contents into the container at $HOME/app setting the owner to the user
#COPY --chown=nginx . $HOME/app

# change to nginx user
#USER nginx

#USER user

# Copy nginx configuration
#COPY --chown=nginx nginx.conf /etc/nginx/sites-available/default
#COPY --chown=nginx .docker/Viewer-v3.x/default.conf.template /usr/src/default.conf.template
COPY --chown=nginx:nginx .docker/Viewer-v3.x /usr/src
RUN chmod 777 /usr/src/entrypoint.sh

#RUN chmod 777 /usr/src/entrypoint.sh

#COPY --chown=nginx . .

# RUN rm /etc/nginx/conf.d/default.conf

#USER nginx
#COPY --chown=nginx:nginx .docker/Viewer-v3.x /usr/src
#RUN chmod 777 /usr/src/entrypoint.sh

#RUN chmod +x /usr/src/entrypoint.sh

# reverse proxy server
#EXPOSE 80
#EXPOSE 80/tcp
#EXPOSE 3000

# change back to nginx user 
#USER nginx

ENTRYPOINT ["/usr/src/entrypoint.sh"]

# Launch nginx
CMD ["nginx", "-g", "daemon off;"]

#CMD ["bash", "run.sh"]
