FROM node:latest

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list && apt-get update && apt-get install -y google-chrome-stable libxss1 && rm -rf /var/lib/apt/lists/*

RUN npm install -g pa11y@latest pa11y-reporter-html@latest

COPY accessabilitiy-testing.sh /accessabilitiy-testing.sh
COPY test-script.sh /test-script.sh

 
#WORKDIR $DIRd

# mount files from the repo in the dockerfile
