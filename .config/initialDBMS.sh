#! /usr/bin/bash
LC_COLLATE=C # Terminal Case Sensetive 
shopt -s extglob # Enable Special Pattern

#export PS1="\h@\u:DBMS\$"
#export PS2="--Menu-->"
export PS3="Select Main Menu: "


select choice in "CREATE DB" "LIST DBs" "CONNECT DB" "DROP DB" "Re-Name DB" "EXIT DBMS"
do 

    case $REPLY in 
        1)
        	sudo ./ConfigDB/create

        ;;
        2)
            sudo ./ConfigDB/list
            
        ;;
        3)
        	echo "Connect DB"
        
        ;;
        4)
        	sudo ./ConfigDB/drop
        
        ;;
        5)
        	echo "Re-Name DB"
        	sudo ./ConfigDB/re-name
        ;;
        6)
        	echo "Goodbye `whoami` :("
        	exit
        
        ;;
        *) 
            echo "PLease Select Valid number 1|2|3|4|5."
        ;;
    esac

done 
