#!/bin/bash

readarray -t filess < <(ls -p | grep -v /)

#echo "${filess[@]@Q}"

for file in "${filess[@]}"
do
    file_ext=$(echo "${file}" | cut -d "." -f 2)
    
    case "${file_ext}" in
        jpg|jpeg|png) 
            if [ ! -d images ]; then
                mkdir images
            fi
        mv "${file}" images/
        ;;


        doc|docx|txt|pdf)        
        if [ ! -d documents ]; then
                mkdir documents
            fi
        mv "${file}" documents/        
        ;;    


        xls|xlsx|cs)
        if [ ! -d spreadsheets ]; then
                mkdir spreadsheets
            fi
        mv "${file}" spreadsheets/        
        ;;    


        sh)
        if [ ! -d scriptss ]; then
                mkdir scriptss
            fi
        mv "${file}" scriptss/
        ;;
  
        zip|tar|gz|tar.bz2)
         if [ ! -d archives ]; then
                mkdir archives
            fi
        mv "${file}" archives/
        ;;

        ppt|pptx)
        if [ ! -d presentations ]; then
                mkdir presentations
            fi
        mv "${file}" presentations/
        ;;


        mp3) audio
        if [ ! -d audio ]; then
                mkdir audio
            fi
        mv "${file}" audio/
        ;;
        mp4) 
        if [ ! -d video ]; then
                mkdir video
            fi
        mv "${file}" video/
        ;;

        *);;
    esac

done


# while read f_name;
# do
#     # echo "${f_name} ---"
#     ff_name="${f_name}"
#     ext=$( cut -d "." -f 2 "${ff_name}" )
#     echo "ext: ${ext}"
#     case $ext in 
#     sh) echo "sh: ${f_name}" ;;
#     *);;
#     esac
# done < <(ls -p | grep -v /)