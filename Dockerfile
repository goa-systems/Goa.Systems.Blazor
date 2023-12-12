FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY Published/ ./
ENTRYPOINT ["dotnet", "Goa.Systems.Blazor.App.dll"]