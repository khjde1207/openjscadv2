FROM node:current-alpine3.13

RUN npm set unsafe-perm true

run apk update && apk add --no-cache git bash && \
git clone https://github.com/jscad/OpenJSCAD.org && \
cd OpenJSCAD.org && \
git checkout V2 && \
npm i 

# ADD index.html /OpenJSCAD.org/packages/web/docs/

WORKDIR /OpenJSCAD.org/

EXPOSE 8081

CMD npm run web

# docker build --tag openjscadv2:latest .
# docker run openjscadv2:latest 
# docker exec -it <CONTAINER ID> /bin/bash
