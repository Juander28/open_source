# Open Source Tools Build
this script installs open source tools to design in VLSI and all its dependencies on an Ubuntu (only) System.
The scripts in this repo are:
 - open_source.sh

 
# Contents
- [Steps to build Open Source Tools](#steps-to-build-openlane)
  
 
# STEPS TO EXECUTE THE SCRIPT
1.`sudo apt-get install git`\
2. `git clone https://github.com/Juander28/open_source`\
3. `cd open_source`\
4. Execute the script as below:     
        - `chmod 777 open_source.sh`\
        - `./open_source.sh`
     
    
5. This script would create following directory structure:
```bash 
Home/
  └── APPS/
  ├   └── gaw
  ├   ├── graywolf
  ├   ├── irsim
  ├   ├── klayout
  ├   ├── magic
  ├   ├── ngspice
  ├   ├── netgen
  ├   ├── OpenSTA
  ├   ├── qflow
  ├   ├── qrouter
  ├   ├── xschem
  ├   ├── iverilog
  ├   ├── gtkwave
  ├   ├── cocotb
  └── PDKS/
  ├   └── open_pdks(SKY130)
  └── PROJECTS/
      └── 2COPY
```

