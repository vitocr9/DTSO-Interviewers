FROM mcr.microsoft.com/dotnet/framework/sdk:4.8 AS build
WORKDIR /app

# copy csproj and restore as distinct layers
COPY ./DTSOInterviewers/*.sln ./Test/
COPY ./DTSOInterviewers/*.csproj ./Test/
COPY ./DTSOInterviewers/*.config ./Test/


# copy everything else and build app
COPY ./DTSOInterviewers/. ./Test/
WORKDIR /app/Test
RUN msbuild /p:Configuration=Release


FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8 AS runtime
WORKDIR /inetpub/wwwroot
COPY --from=build /app/Test/. ./