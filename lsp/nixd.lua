--- https://github.com/nix-community/nixd
return {
    cmd = { "nixd" },
    filetypes = { "nix" },
    root_markers = {
        "flake.nix",
        ".git",
    },
    settings = {
        nixd = {
            nixpkgs = {
                expr = "import (builtins.getFlake(toString ./.)).inputs.nixpkgs { }",
                -- expr = 'import (builtins.getFlake "/etc/nixos").inputs.nixpkgs { }',
                -- expr = 'import <nixpkgs> { }',
            },
            formatting = {
                command = { "alejandra" },
            },
            options = {
                nixos = {
                    expr = "(builtins.getFlake(toString ./.)).nixosConfigurations.nixos.options",
                },
                home_manager = {
                    expr = "(builtins.getFlake(toString ./.)).nixosConfigurations.nixos.options.home-manager.users.type.getSubOptions []",
                },
            },
        },
    },
}
