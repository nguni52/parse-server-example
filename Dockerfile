FROM node:latest

RUN mkdir parse

ADD . /parse
WORKDIR /parse
RUN npm install

ENV APP_ID setYourAppId
ENV MASTER_KEY setYourMasterKey
ENV DATABASE_URI setMongoDBURI

# Optional (default : 'parse/cloud/main.js')
# ENV CLOUD_CODE_MAIN cloudCodePath

# Optional (default : '/parse')
# ENV PARSE_MOUNT mountPath
# ENV APP_ID 93BRNERAZHWF7N5I42KE1AHT6KSS51U546WYMXEFEPR939IW
# ENV MASTER_KEY GBL7G87B1BTE6BK75A8Z2IXXM3YWROZLBJXU18VIFNNGLNZ1
# ENV MONGODB_URI mongodb://heroku_fdc6vj69:de4eme9pptmuvmt6r7v2bjnnl3@ds157682.mlab.com:57682/heroku_fdc6vj69

EXPOSE 1337

# Uncomment if you want to access cloud code outside of your container
# A main.js file must be present, if not Parse will not start

# VOLUME /parse/cloud

CMD [ "npm", "start" ]
