FROM mcr.microsoft.com/dotnet/sdk:5.0 as base

RUN apt-get update

# Install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

RUN curl -sSL https://packages.microsoft.com/config/ubuntu/20.04/prod.list | tee /etc/apt/sources.list.d/microsoft-prod.list

RUN curl -sSL https://packages.microsoft.com/keys/microsoft.asc | apt-key add -

RUN apt-get update

RUN apt-get install azure-functions-core-tools-3
