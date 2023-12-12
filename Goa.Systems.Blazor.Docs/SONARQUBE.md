# Setting up Sonarqube server

Sonarqube is running statically as docker container and is set up via SSH and the following command. Attention: This is a evaluation installation and SQ should be installed on a separate host. This is for demonstration purposes only.

## Install

```bash
docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -p 9000:9000 sonarqube:latest
```

## Configuration

### Allow access from local host

Configure Virtualbox to forward the port.

![Allow access](media/c1d3UtDM1b.png)

Open [Sonarqube](http://localhost:9000) in your browser and login with username and password being `admin`. When prompted change the password to something you will remember:

![Change password](media/Y2NraWxGLh.png)

Create a new local project.

![Create project](media/mLSeTiUYAY.png)

Configure project

![Configure project](media/LYzVsLcwC9.png)

Apply standard values

![Apply standards](media/C8pSLiWNi0.png)

Configure local analysis (most generic one)

![Configure analysis](media/H3uesqjLK0.png)

Generate token

![Generate token](media/swiFqIQbZp.png)

And click on "Continue". Your token is shownand select "Other".

![Select Other](media/g6z7ylpCJl.png)

In the boy you get all the information you need to run the scan.

![Required information](media/C340d3Aypi.png)

Finally add a code analysis step to the pipeline:

![Pipeline step](media/EZe4Vvur4r.png)

After the pipeline run is complete code analysis should be shown in Sonarqube:

![Analysis](media/S2p1gpyfSl.png)

## Uninstall

```bash
docker container stop sonarqube
docker container rm sonarqube
docker image rm sonarqube:latest
```