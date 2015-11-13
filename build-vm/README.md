# VM setup using Vagrant and Chocolatey
  1. Download and install [Vagrant](https://www.vagrantup.com/downloads.html)
  2. Download and install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
  3. Clone the repository or download the repository as zip.
  4. Open `{Systempath}/ICSE-2013-MCT/build-vm` in command line
  5. Run `vagrant up` from command line.
  6. Login the vm using password `vagrant`
  7. Let the box restart.
  8. Login the vm using password `vagrant`
  9. Activate the OS online.
  10. Following can be observed:
    * Base box image is downloaded and added in Vagrant.
    * Virtual machine is created and loaded using VirtualBox.
    * VM is launched in GUI mode.
    * Java 1.7 is installed using Chocolatey.
    * The OS will be active for 90 days.

## Validation
  1. Open command prompt using `cmd` from windows-run
  2. Type `java -version`
    * Java version should be displayed.

## References
  1. Used vagrant Windows 7 64 bit base box image of [datacastle/windows7](https://atlas.hashicorp.com/datacastle/boxes/windows7).
  2. Chocolatey script [githubpage](https://github.com/chocolatey/choco/wiki/Installation#command-line).
