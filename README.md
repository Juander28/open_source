# Open Source Tools Build
This script builds openlane and all its dependencies on an Ubuntu (only) System.
The scripts in this repo are:
 - open_source.sh

 
# Contents
- [Steps to build Open Source Tools](#steps-to-build-openlane)
- [Steps to run Openlane](#steps-to-run-openlane)
- [Acknowledgments](#acknowledgments)
 
# STEPS TO BUILD OPENLANE

1. `git clone https://github.com/Juander28/open_source`
2. `cd open_source` #switch to root user (or have root user password ready).
3. Execute the script as below:

      - **For standalone build**
       
        - `chmod 777 open_source.sh`
        - `./open_source.sh`
     
      
5. This script would create following directory structure:
```bash 
Home/
  └── APPS/
  ├   └── tools
  ├   ├── cmake-3.13.0
  ├   ├── cmake-3.13.0.tar.gz
  ├   ├── graywolf
  ├   ├── magic-8.3.50
  ├   ├── magic-8.3.50.tgz
  ├   ├── netgen-1.5.134
  ├   ├── netgen-1.5.134.tg
  └── PDKS/
  └── PROJECTS/

```

# ACKNOWLEDGMENTS

-[efabless openlane team](https://github.com/efabless/openlane)
