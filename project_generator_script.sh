#This is my(Sabrina DeSoto) first assignmtent for Comp. PHY 3009
#The purpose of this is to create a script that will make a root directory and subdirectories for any new project for anyone to use from any computer.
#There is one argument  ($1) so that it can be titled anything the user desires
#To use this one should input 'bash project_generator_script.sh project_name' into a terminal
#The following is the script of what it creates

mkdir $1
cd $1
echo "This is the root directory, containing subdirectories for a new computational physics project." > README.md

#I started 10-27-2015 by creating a new directory with mkdir and an argument for the directories name 
#cd $1 then puts me inside that directory
#inside every directory is a readme.md file created by echo "explination of directory" > README.md 
#the echo allows me to say what that is fallowed by > telling it it's title (README.md)
#To to see the readme.md file once in the directory input cat README.md

#Next I am going to create subdirectories within it using the same mkdir cd echo "_" > README.md steps

mkdir Bin
cd Bin
echo "This subdirectory holds the scripts for this project." > README.md

#This created my first subdirectory 'Bin' and it's readme.md explanation
#To make the next subdirectory I need to make sure to go back to the root directory '$1' (whatever it's titled)
#To do so I input cd ../ and it takes me back one directory to the root directory
#From here I make a new subdirectory using the same steps.

cd ../
mkdir Data
cd Data
echo "This subdirectory holds all the data for this project." > README.md

#Here I will create two subdirectories within the Data directory
#since cd Data already put me in the Data directory I can create my subdirectories using mkdir
#They will also have readme.md explinations so I use cd to enter the sub folder and echo "_" > README.md to add these

mkdir Analyzed_data
cd Analyzed_data
echo "This third level subdirectory holds all data that has been analyzed for this project." > README.md

#remembering to go back to the Data directory I use cd ../ again

cd ../
mkdir New_data
cd New_data
echo "This third level subdirectory holds all new data for this project." > README.md

#Now I need to go back two directories to creat my next subdirectory back in the root directory.
#to do this I use ../../ since .. tells me go back and each / tells me by how many directories

cd ../../
mkdir Results
cd Results
echo "This subdirectory holds the results of this project" > README.md

#I go back one directory and creat my next subdirectory

cd ../
mkdir SRC
cd SRC 
echo "This subdirectory holds the source code for this project." > README.md

#I go back one directory to creat my final subdirectory.

cd ../
mkdir Doc
cd Doc
echo "This subdirectory holds the txt manuscripts of this project." > README.md

#Now I need to go back and make an empty file in my root directory
#By inputing 'touch' followed by the desired file name I creat an empty file

cd ../
touch LSCENSE.md

#This assignment is now complete and contains:
#One root directory that can be titled upon use
#Five subdirectories each with a readme.md explination
#Two third level subdirectories in the 'Data'subdirectory with readme.md explinations
#One empty file in the root directory titled 'LICENSE.md' as required

