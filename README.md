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
3. Change directory to where openlane_build_script folder was cloned. `chmod 777 openlane_script.sh`
4. Execute the script as below:

      - **For standalone build**
       
        - `chmod 775 openlane_script.sh`
        - `./openlane_script.sh`
     
      
5. This script would create following directory structure:


# ACKNOWLEDGMENTS

-[efabless openlane team](https://github.com/efabless/openlane)
