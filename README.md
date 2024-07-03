The VM can attempt to be built with `nix-build -A myMachine.config.system.build.vm`.

Currently this depends on using a WIP branch of ngipkgs https://github.com/ngi-nix/ngipkgs/tree/default-nix-init created as part of a PR https://github.com/ngi-nix/ngipkgs/pull/209 to add a `default.nix` to the repo.
