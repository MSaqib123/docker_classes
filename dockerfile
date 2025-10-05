#1. FROM Command
FROM nginx:mainline-bookworm-perl as base
#2. 2 COP
#3. WORKDIR
#WORKDIR /usr/share/nginx/html
#WORKDIR src

#4. ARG and ENV
ARG build_configuration=Release
EXPOSE 80
WORKDIR /usr/share
WORKDIR nginx
WORKDIR html
COPY ./SampleWebApp/ .

FROM base as Final

#2. 2 COPY
COPY --from=base /usr/share/nginx/html /src/






