# Goa.Systems.Blazor

## Download Ubuntu Server and configure VM

Download [Ubuntu server image](https://releases.ubuntu.com/22.04.3/ubuntu-22.04.3-live-server-amd64.iso) and create a VM with [VirtualBox](https://virtualbox.org). You can use the script `New-VirtualMachine.ps1` in `Goa.Systems.Blazor.Docs` 

```powershell
.\Goa.Systems.Blazor.Docs\New-VirtualMachine.ps1 -Name my-build-agent
```

Configure the virtual machine to boot from the ISO file.

![Configure build order](media/GVTM3bhu3u.png)

![Add ISO to VM](media/cT3Y1rp1zH.png)

## Install Ubuntu Server

![Select marked entry](media/MoBcMfP6pH.png)

![Select language](media/8wqIpIjLbY.png)

![Update installer](media/AMoPgNUdW9.png)

![Select language](media/nLlwrYZWYo.png)

![Install default Ubuntu Server](media/OkTitiglWP.png)

![Configure network](media/TTFYKMUbZO.png)

![No proxy address](media/xW4h80OtR1.png)

![Configure archive mirror](media/ugV3XZpeUH.png)

![Confgure storage](media/wackXrWcX7.png)

![Modfy storage layout](media/IS2XCC5W5T.png)

![Confirm layout](media/l87d74m6YL.png)

![Provide names and credentials](media/y2aMW2u38O.png)

![Configure Ubuntu Pro](media/Q7WF9R2I3V.png)

![Optional: Configure SSH keys](media/WIRDIrz2GX.png)

![Confirm keys](media/IUyPMsu3fD.png)

![Apply selection](media/j8Wk5ZKOVh.png)

![Reboot machine](media/NVEJh36nH1.png)

![Press Enter to confirm](media/I0s2ZYSRb8.png)

![Configure SSH port forwarding in Virtualbox](media/NdEE7BF45a.png)

![Connect via SSH from Windows](media/NqlvFYQ6Bd.png)

![Open Snapshot configuration](media/cekz6d90aH.png)

![Configure snapshot](media/sWkezX4zOz.png)

If an error occurs the snapshot can be restored.

![Restore snapshot](media/lyBx0edWjb.png)

## Install Docker

For this you can use the Script `setupdocker.sh` in `Goa.Systems.Blazor.Docs`. Run it as root.

## Configure Runner

Add the installed machine as runner to your project.

![Configure GitHub](media/pgovMHmwhu.png)

The next page will explain how to install the runner. There is no script for this as checksums and versions change. Just follow the instructions but it is advised to create a service user and not let the runner run under user root. The commands to create the user are shown in the following screenhot.

![Instructions](media/fYBQJS8uIG.png)

Create the user `svcgithub` ...

![Create user](media/QyJtsevDwH.png)

... and follow the instructions. Mind the highlighted label. This is important in the pipeline for runner assignment.

![Setup agent](media/JD3K21U3b6.png)

The runner should now appear in the overview.

![Setup agent](media/MMFEjgglTh.png)

Important: The runner is now only running when started manually. There is no system service or anything yet. To install the runner as a service follow the instructions in the next screenshot. This must be done as root!

![Install as service](media/aWIXPIuEF8.png)

When this is done the runner will start on system startup. Now the runner is ready to serve requests:

![Running job](media/6ZUkc7yqBJ.png)