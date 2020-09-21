# Deploy .NET Core API with Docker

- reference : 
```
https://dotnetplaybook.com/
```

### Ingredients
- VS Code text editor (free)
- .NET Core SDK (free)
- Docker Desktop / Docker CE (free)
- Account on Docker Hub (free)
- (optional) "Another" Local Machine
- (optional) Azure Account ("free")


### Install dotnet core ubuntu
```bash
sudo apt-get update

```

ubuntu info
```bash
lsb_release -a
```

Web
```bash
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
```

### Install the SDK

```bash
sudo apt-get update
  sudo apt-get install -y apt-transport-https
  sudo apt-get update
  sudo apt-get install -y dotnet-sdk-3.1
```

### Install the runtime
```bash
sudo apt-get install -y aspnetcore-runtime-3.1
```

### Command dotnet
```
dotnet --version
dotnet new
dotnet new console -o helloWorld
dotnet run
dotnet build
```

### command 
```bash
cd h*
code -r DockerAPI
```

## Step a api project
```bash
dotnet new webapi -n DockerAPI
docker build -t binarythistle/simpleapi .
docker run -p 8080:80 binarythistle/simpleapi
```