#! /usr/bin/bash
LC_COLLATE=C # Terminal Case Sensetive 
shopt -s extglob # Enable Special Pattern

#export PS1="\h@\u:DBMS\$"
#export PS2="--Menu-->"
export PS3="Select Main Menu: "

while true ;
	do
		select choice in "CREATE DB" "LIST DBs" "CONNECT DB" "DROP DB" "Re-Name DB" "EXIT DBMS"
		do 

		    case $REPLY in 
			  1)
			  	./ConfigDB/create
			  	break

			  ;;
			  2)
				./ConfigDB/list
				break
				
			  ;;
			  3)
			  	./ConfigDB/connect
			  	break
			  
			  ;;
			  4)
			  	./ConfigDB/drop
			  	break
			  ;;
			  5)
			  	./ConfigDB/re-name
			  	break
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

done 
