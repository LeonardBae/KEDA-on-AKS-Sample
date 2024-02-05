FROM mcr.microsoft.com/azure-functions/node:4-node16
ENV AzureWebJobsScriptRoot=/home/site/wwwroot \
        AzureFunctionsJobHost__Logging__Console__IsEnabled=true
WORKDIR /home/site/wwwroot
COPY package.json ./
RUN npm install --production
COPY . .
CMD [ "/azure-functions-host/Microsoft.Azure.WebJobs.Script.WebHost" ]
