# User Defined Variables and Parameter Expansion
----

## Shell Parameter Expansion

1. **Parameter:** It is any entity that stores values
    1. Variables: Parameters whose values can be manually change.
      - User-Defined Variables.
        ```bash

        #User-Defined
        student='Rana Durlabh' # no spaces before and after equals(=) sign.
        echo "Hello ${student}" # ${student} = Parameter expansion

        ```
      - Shell Variables:
        - Bourne Shella Varibale:
          - Bourne Shell (Created by Stephen Bourne 1979)
          - 10 in total

          - Some Common Shell Variables
            - PATH : path of executables
            - HOME : Absolute path to user home directory
            - USER : conatins username of the current user 
            - HOSTNAME : Computer Name
            - HOSTTYPE : Architecture of Computer
            - PS1 : Prompt string shown in the terminal before each command

                ```bash
                # Bourne Shell Variables

                echo "${PATH}"
                echo "${HOME}"
                echo "${USER}"
                echo "${HOSTNAME}"
                echo "${HOSTTYPE}"
                echo "${PS1}"

                ```
        - Bash Shell Varibales.
          - Bash shell (Based on the Bourne shell)
          - **B**ourne **A**gain **SH**ell(BASH)
          - Around 95 in total


    2. Positional Parameters: 
    3. Special Parameters: