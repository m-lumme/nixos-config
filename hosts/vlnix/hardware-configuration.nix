# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports = [ ];

  boot.initrd.availableKernelModules = [ "ata_piix" "ohci_pci" "sd_mod" "sr_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "rpool/root/nixos";
      fsType = "zfs";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/C700-FE4C";
      fsType = "vfat";
    };

  fileSystems."/home" =
    { device = "rpool/root/home";
      fsType = "zfs";
    };

  fileSystems."/tmp" =
    { device = "rpool/root/tmp";
      fsType = "zfs";
    };

  swapDevices = [ ];

  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
  virtualisation.virtualbox.guest.enable = true;
}
