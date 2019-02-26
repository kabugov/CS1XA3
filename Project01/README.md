# <ins>CS1XA3 Project 01</ins>

University class project to create a working and user-prompted bash script 

## <ins>Features</ins>

The following is a list of the features implemented into the bash script and how to use each of them: -

### <ins>**Script Input**</ins>
 - This feature of the bash script makes the script interactive using user prompted input
 - Upon running the script, the user is displayed the following menu and prompted to make a selection
 
	```
	-----------------------------------------------------------------------------------------------------------------------------
	Select a feature to use from the following menu:-

	1 - Create TODO Log: Creates a .log file containing the location of all lines in files with the '#TODO' tag

	2 - Compile Error Log: Creates a .log file containing all Haskell and Python files that fail to compile

	3 - File Type Count: Outputs the number of files of each of the following file types; HTML, Javascript, CSS, Python, Haskell

	4 - Delete Temporary Files: Finds and deletes all untracked .tmp files

	5 - File Creation/Modification: Select whether to return the last file created or last modified
	-----------------------------------------------------------------------------------------------------------------------------
	```
 - This selection determines which feature of the script is run
 
### <ins>**1 - Create TODO Log**</ins>
 - If the user selects '1' from the menu, this feature of the script is run
 - It searches all files in the repository for lines containing the '#TODO' tag
 - Then adds each line and its location to a new file called **todo.log**
 
 ### <ins>**2 - Compile Error Log**</ins>
 - If the user selects '2' from the menu, this feature of the script is run
 - It searches the repository for Haskell and Python files that fail to compile
 - It then putsthem in a new file called **compile_fail.log**

 ### <ins>**3 - File Type Count**</ins>
 - If the user selects '3' from the menu, this feature of the script is run
 - It searches the repository for HTML, Javascript, CSS, Python and Haskell files
 - Then returning a count of each file type
 
 	```
	HTML: 
	Javascript: 
	CSS: 
	Python: 
	Haskell: 
	Bash: 
	```
 ### <ins>**4 - Delete Temporary Files**</ins>
 - If the user selects '4' from the menu, this feature of the script is run
 - It searches the repository for untracked .tmp files and deletes them

 ### <ins>**5 - File Creation/Modification**</ins>
 - If the user selects '5' from the menu, this feature of the script is run
 - This feature prompts for another menu to be displayed to the user
 
	```
	-----------------------------------------------------------------------
	Select a feature from the following list:-

	1 - File Created: Finds and returns the name of the last file created

	2 - File Modified: Finds and returns the name of the last modified file
	-----------------------------------------------------------------------
	```
 	- #### <ins>**1 - File Creation**</ins>
	- If the user selects '1' from the menu, this sub-feature of the script is run
	- This sub-features returns the name of the last file created
	
	- #### <ins>**2 - File Modification**</ins>
	- If the user selects '2' from the menu, this sub-feature of the script is run
	- This sub-features returns the name of the last file modified


## Authors

* **Victor Kabugo** 

## License

This project is licensed under the **MIT** License
