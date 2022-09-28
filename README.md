# MongoDB (Prometheus) 
The MongoDB (Prometheus) uses Prometheus to collect server data remotely and locally.  
Collective batch of data is gathered every minute by the MongoDB data exporter and send through Prometheus to Dynatrace platform for detailed analysis.   

**This is intended for users, who:**
- Would like to monitor database traffic for optimization plan 
- Already use Prometheus and would like to extend its scope of collected data 

**This enables you to:**
- Monitor database operations with a comprehensive dashboard 
- Use Prometheus as the data source 
- Take pre-emptive measures to avoid service degradations 

**Compatibility Requirements**
- Host running MongoDB server and Prometheus ‘Percona’ exporter dedicated for MongoDB monitoring. 

## Dev

### Prerequisites
- Nix-capable environment, for Windows that means [installing WSL](https://docs.microsoft.com/en-us/learn/modules/get-started-with-windows-subsystem-for-linux/2-enable-and-install)
- [nix](https://nixos.org/download.html) / [**nix for WSL**](https://nixos.org/download.html#nix-install-windows)
- `direnv` (`nix-env -iA nixpkgs.direnv`)
- [configured direnv shell hook](https://direnv.net/docs/hook.html), yup in your `.bashrc`
- some form of `make` (`nix-env -iA nixpkgs.gnumake`)
- Docker (available in the same environment as nix)

Hint: if something doesn't work because of missing package please add the package to `default.nix` instead of installing on your computer. Why solve the problem for one if you can solve the problem for all? ;)

### One-time setup
```
make init
```

### Everything
```
make help
```

### Resources
- [Extension yaml docs](https://www.dynatrace.com/support/help/extend-dynatrace/extensions20/extension-yaml)
- [Extension knowledge base](https://www.dynatrace.com/support/help/extend-dynatrace/extensions20)

### Internal tooling
If you're a **Dynatrace employee** you can follow [this link](https://github.com/dynatrace-extensions/precious-toolz-internal) to enable internal tooling