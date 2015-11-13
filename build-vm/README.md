# VM setup using Vagrant and Chocolatey
  1. Download and install [Vagrant](https://www.vagrantup.com/downloads.html)
  2. Download and install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
  3. Clone the repository or download the repository as zip.
  4. Open `{Systempath}/ICSE-2013-MCT/build-vm` in command line
  5. Run `vagrant up` from command line.
  6. Shutdown the vm in the virtualbox.
  7. Run `vagrant reload --provision`
  8. Following can be observed:
    * Base box image is downloaded and added in Vagrant.
    * Virtual machine is created and loaded using this VirtualBox.
    * VM is launched in GUI mode.
    * Java 1.7 is installed using Chocolatey.

## Validation
  1. Open command prompt using `cmd` from windows-run
  2. Type `java -version`
    * Java version should be displayed.

## References
  1. Used vagrant Windows 7 64 bit base box image of [datacastle/windows7](https://atlas.hashicorp.com/datacastle/boxes/windows7).
  2. Chocolatey script [githubpage](https://github.com/chocolatey/choco/wiki/Installation#command-line).
