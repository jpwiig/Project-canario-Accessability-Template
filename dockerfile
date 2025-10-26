FROM node:24-alpine


RUN npm install -g pa11y
COPY accessability-testing.sh /accessability-testing.sh

 
#WORKDIR $DIR

# mount files from the repo in the dockerfile
