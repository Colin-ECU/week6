#!/bin/bash
#Colours to be applied to mathmatic functions
BLUE="\e[34m"
GREEN="\e[32m"
RED="\e[31m"
PURPLE="\e[35m"
NORMAL="\e[97m"

#This line will ask the user to type a password which is hidden
#The hidden password will be written to a new file named secret.txt
#This file will be located in the folder selected by the user
read -sp "Type your secret password :" password 
# The sectret password is: twist
echo 

#The hidden password will be stored in a new file secret.txt
#The password will be stored in encrypted SHA256 format
echo $password | sha256sum > secret.txt
echo
exit 0
# If have time can incorporate PWDtest file from week2 for strong password or check blog for add salt

# This changes Dir to the location of the PasswordCheck folder
cd ~/scripts/portfolio/week2/

#This runs the passwordCheck script
./passwordCheck.sh 

# If the secret password matches the sha256sum then the 3 options are offered
# A Main Menu position is established by the function main_menu
#This provides the reference point for the program to return to once completing the option
function main_menu () {
while true; 
do
 
        echo -e ${BLUE} "20. 2020" 
        echo -e ${BLUE} "19. 2019" 
        echo -e ${BLUE} "18. 2018"
        echo -e ${BLUE} "17. 2017"
        echo -e ${BLUE} "16. 2016"
        echo -e ${BLUE} "15. 2015"
        echo -e ${BLUE} "14. 2014"
        echo -e ${BLUE} "13. 2013"
        echo -e ${BLUE} "12. 2012"
        echo -e ${BLUE} "11. 2011"
        echo -e ${BLUE} "10. 2010"
        echo -e ${BLUE} "09. 2009"
        echo -e ${BLUE} "08. 2008"
        echo -e ${BLUE} "07. 2007"
        echo -e ${BLUE} "06. 2006"
        echo -e ${BLUE} "05. 2005"
        echo -e ${BLUE} "04. 2004"
        echo -e ${BLUE} "03. All"
        echo -e ${NORMAL} "01. Exit"

        read -p "Please type your selection of years from the list here:  " option1 option2 option3 option4 option5 option6 option7 option8 option9 option10 option11 option12 option13 option14 optin15 option16 option17
        #read -p "Please type the location you would like this raw data stored  :" location
        
        #The colours are attributed to the options for user to select.  

        #The user is asked to enter an option selection from the list

        
        
    if [ $? -eq 0 ]; then
        
        #if the option selected is true then the below path will be followed and file executed
        # Each option will be directed to the relevant script file and run
        # An option other than 1 - 3 will result in and Incorrect option error
      
      #test using -O for output consolidation
      # Can maybe use > (output) instead of the |

        Location=~/scripts/portfolio/week6/downloads
    # erros.sh in week2 has some case example to reviiew
    

      case $option in

        20)  wget -r -N https://www.us-cert.gov/ncas/alerts/2020   | $location
        ;;
        19)  wget -p https://www.us-cert.gov/ncas/alerts/2019   | $location
        ;;
        18)  wget -p https://www.us-cert.gov/ncas/alerts/2018   | $location
        ;;
        17)  wget -p https://www.us-cert.gov/ncas/alerts/2017   | $location
        ;;
        16)  wget -p https://www.us-cert.gov/ncas/alerts/2016   | $location
        ;;
        15)  wget -p https://www.us-cert.gov/ncas/alerts/2015   | $location
        ;;
        14)  wget -p https://www.us-cert.gov/ncas/alerts/2014   | $location
        ;;
        13)  wget -p https://www.us-cert.gov/ncas/alerts/2013   | $location
        ;;
        12)  wget -p https://www.us-cert.gov/ncas/alerts/2012   | $location
        ;;
        11)  wget -p https://www.us-cert.gov/ncas/alerts/2011   | $location
        ;;
        10)  wget -p https://www.us-cert.gov/ncas/alerts/2010   | $location   
        ;;
        09)  wget -p https://www.us-cert.gov/ncas/alerts/2009   | $location
        ;;
        08)  wget -p https://www.us-cert.gov/ncas/alerts/2008   | $location   
        ;;
        07)  wget -p https://www.us-cert.gov/ncas/archives/alerts/2007  | $location
        ;;
        06) wget -p https://www.us-cert.gov/ncas/archives/alerts/2006   | $location
        ;;
        05) wget -p https://www.us-cert.gov/ncas/archives/alerts/2005   | $location
        ;;
        04) wget -p https://www.us-cert.gov/ncas/archives/alerts/2004   | $location
        ;;
        03) wget -O outputFile -i https://www.us-cert.gov/ncas/archives/alerts/2004 https://www.us-cert.gov/ncas/archives/alerts/2005 https://www.us-cert.gov/ncas/archives/alerts/2006 https://www.us-cert.gov/ncas/archives/alerts/2007 https://www.us-cert.gov/ncas/archives/alerts/2008 https://www.us-cert.gov/ncas/archives/alerts/2009 https://www.us-cert.gov/ncas/archives/alerts/2010 https://www.us-cert.gov/ncas/archives/alerts/2011 https://www.us-cert.gov/ncas/archives/alerts/2012 https://www.us-cert.gov/ncas/archives/alerts/2013 https://www.us-cert.gov/ncas/archives/alerts/2014 https://www.us-cert.gov/ncas/archives/alerts/2015 https://www.us-cert.gov/ncas/archives/alerts/2016 https://www.us-cert.gov/ncas/archives/alerts/2017 https://www.us-cert.gov/ncas/archives/alerts/2018 https://www.us-cert.gov/ncas/archives/alerts/2019 https://www.us-cert.gov/ncas/archives/alerts/2020
        ;;
        01)  exit 0
        ;;
        *)  echo "Incorrect option"
       esac
        
    else
        #If user password entered is not correct the Access Denied error will be displayed
        #The colour coded Access Granted and Access denied are generated from the passwordCheck file
        echo 
        exit 1

    fi

done
}
        #This is the loop back to Main_Menu when the option has been executed
main_menu

exit 0
echo
echo This Script is designed to scrape Alerts generated by USA Cybbersecurity and Infrastructure Security Agency CISA
echo The results can be reviewed and compared to previous years to provide a 16 year range of frequency and volume based comparison.
echo 
#read -p "To proceed you will need to enter your User Name and Password or type quit to exit:  " username
echo
#read -p " Please enter your password here:  " password
# Name
#Password - encrypted

echo The maximum year range to review is 2004 to 2020.
#prompt user to type a website URL to download or to type exit to quit
read -p "Please enter the CISA Alert Year or year range you are interested in reviewing: " year1 year2
echo
CISAURL="https://www.us-cert.gov/ncas/alerts"

echo

#echo "Thank you for your time and Goodbye"
# exit program if the user does not provide a www but enters exit instead
#else
    read -p "type the location you would like the download file or files to be stored: " location 
    #prompt the users to type a download location folder. In this case a folder called Assignment-Downloads
    wget -P $CISAURL "{ $year1 $year2 }"
       # echo you are downloading Alert years from "$CISAURL" to "$location"
        #repeat until user types exit
#fi

exit 0