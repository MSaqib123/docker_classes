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

#7. RUN
RUN dotnet build DockerSampleApp.csproj

#7. Publish for publising the website
RUN dotnet publish  

FROM base as Final

#2. 2 COPY
COPY --from=base /usr/share/nginx/html /src/








