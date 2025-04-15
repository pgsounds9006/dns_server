FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /src
COPY src/WebApp/WebApp /app
WORKDIR /app
RUN dotnet publish -c Release -o /app/publish

FROM nginx:latest
WORKDIR /usr/share/nginx/html
COPY --from=build /app/publish/wwwroot .
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]