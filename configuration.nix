{ config, pkgs, ... }:
{
  #unbootable = pkgs.lib.mkForce false;   
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  users.users.test = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    initialPassword = "test";
  };

  environment.systemPackages = with pkgs; [
    #lcsync
    libgnunetchat
  ];

  #services.vula.enable = true;
  #services.vula.openFirewall = true;

  system.stateVersion = "24.05";
}
