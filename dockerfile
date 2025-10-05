#1. FROM Command
FROM nginx:mainline-bookworm-perl as base
COPY ./SampleWebApp/ /usr/share/nginx/html

FROM base as Final
#we can perform other things here
#Run
#copy