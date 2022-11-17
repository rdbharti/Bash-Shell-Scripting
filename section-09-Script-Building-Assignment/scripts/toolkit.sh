#!/bin/bash

PS3="Select the Script to RUN: "
select tool in "Crusft Remover" "Folder Organiser";
do
    case "${tool}" in
        "Crusft Remover") cruft_remover.sh ;;
        "Folder Organiser") folder_organiser.sh ;;
        *);;
    esac
break
done