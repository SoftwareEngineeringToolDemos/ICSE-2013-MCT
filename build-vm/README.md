# VM setup using Vagrant and Chocolatey
  1. Download and install [Vagrant](https://www.vagrantup.com/downloads.html)
  2. Download and install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
  3. Clone the repository or download the repository as zip. <br>
     `git clone https://github.com/SoftwareEngineeringToolDemos/ICSE-2013-MCT.git`
  4. Install the [vagrant-reload](https://github.com/aidanns/vagrant-reload) plugin. This is required to do a restart of the VM after the provisioning has completed. Use `vagrant plugin install vagrant-reload` to install. If the plugin is not installed, and `vagrant up` is used, the process will abort with an error saying the plugin is missing. 
  5. Open `{Systempath}/ICSE-2013-MCT/build-vm` in command line
  6. Run `vagrant up` from command line.
  7. Following can be observed:
    * Base box image is downloaded and added in Vagrant.
    * Virtual machine is created and loaded using VirtualBox.
    * VM is launched in GUI mode.
    * Java 1.7 is installed using Chocolatey.
    * VLC win 32 is installed using chocolatey
    * Eclipse indigo is downlaoded
    * MCT tool is setup
    * Readme, License and Installation files are added
    * Shortcut link to eclipse is created
    * Shortcut link to the video demonstration is created
    * USB is disabled. 
    * The OS will be active for 90 days.

## Installing Audio Driver
    * Run the installdriver.exe in the desktop
    * Accept the firewall changes to install the driver
    * Click `Finish' to restart the VM
    
## Run the tool 
  * Follow the steps mentioned [here](https://github.com/SoftwareEngineeringToolDemos/ICSE-2013-MCT)
  * The tools is already installed, still the steps are available in installion.txt
  * The executions steps are avaialble in Readme.txt

## Notes
  * Wait till the script complete
  * The audio driver has to be installed in order for the tool to work.  

## References
  1. Used vagrant Windows 7 32 bit base box image of [modernIE/w7-ie11](https://atlas.hashicorp.com/modernIE/boxes/w7-ie11).
  2. Chocolatey script [githubpage](https://github.com/chocolatey/choco/wiki/Installation#command-line).
  3. Eclipse indigo
  4. VLC
