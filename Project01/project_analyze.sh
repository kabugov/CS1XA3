#!/bin/bash


# Displays the menu for the user to choose a feature from
echo "-----------------------------------------------------------------------------------------------------------------------------"
echo "Select a feature to use from the following menu:-"
echo " "
echo "1 - Create TODO Log: Creates a .log file containing the location of all lines in files with the '#TODO' tag"
echo " "
echo "2 - Compile Error Log: Creates a .log file containing all Haskell and Python files that fail to compile"
echo " "
echo "3 - File Type Count: Outputs the number of files of each of the following file types; HTML, Javascript, CSS, Python, Haskell"
echo " "
echo "4 - Delete Temporary Files: Finds and deletes all untracked .tmp files"
echo " "
echo "5 - File Creation/Modification: Select whether to return the last file created or last modified"
echo "-----------------------------------------------------------------------------------------------------------------------------"

echo " "
# Takes and stores user input as variable, choice
read choice
echo " "

# Checks if Feature 1 has been selected
if [ $choice -eq 1 ];
then

	# Checks if a todo.log file has already been created
	if [ -f ~/CS1XA3/Project01/todo.log ];
	then
		# Empties todo.log file
		> todo.log

		# Recursively searches for lines containing the TODO tag within the repo and stores the output as a variable, lines
		lines=$(grep -Rn '#TODO' ~/CS1XA3)

		# Writes the content of lines to todo.log
		echo "$lines" > "todo.log"

	else
		# Creates a .log file, todo.log
		touch todo.log

		# Recursively searches for lines containing the TODO tag within the repo and stores the output as variable, lines
		lines=$(grep -Rn '#TODO' ~/CS1XA3)

		# Writes the contents of lines to todo.log
		echo "$lines" > "todo.log"
	fi

	# Outputs the contents of the todo.log file to the terminal
	cat todo.log

	echo " "

# Checks if Feature 2 has been selected
elif [ $choice -eq 2 ];
then

	# Checks if a compile_fail.log file has already been created
	if [ -f ~/CS1XA3/Project01/compile_fail.log ];
	then

		# Empties the compile_fail.log file 
		> compile_fail.log

		# Finds all Haskell files in repository and stores the output in variable, haskellFiles
		haskellFiles=$(find ~/CS1XA3 -name '*.hs')

		# Checks if the contents of haskellFiles compile
		if [ ./"$haskellFiles" ];
		then
			# Appends the files of haskellFiles that don't compile to compile_fail.log file
			echo "$haskellFiles" >> "compile_fail.log"
		fi

		# Finds all Python files in repository and stores the output in a variable, pythonFiles
		pythonFiles=$(find ~/CS1XA3 -name '*.py')

		# Checks if the contents of pythonFiles compile
                if [ ./"$pythonFiles" ];
                then
			# Appends the files of pythonFiles that don't compile to compile_fail.log file
                        echo "$pythonFiles" >> "compile_fail.log"
                fi
	else

		# Creates a .log file, compile_fail.log
		touch compile_fail.log

		# Finds all Haskell files in repository and stores the output in variable, haskellFiles
                haskellFiles=$(find /home/kabugov/CS1XA3 -name '*.hs')

		# Checks if the contents of haskellFiles compile
                if [ ./"$haskellFiles" ];
                then
			# Appends the files of haskellFiles that don't compile to compile_fail.log file
                        echo "$haskellFiles" >> "compile_fail.log"
                fi

		# Finds all Python files in repository and stores the output in a variable, pythonFiles
		pythonFiles=$(find /home/kabugov/CS1XA3 -name '*.py')

		# Checks if the contents of pythonFiles compile
                if [ ./"$pythonFiles" ];
                then
			# Appends the files of pythonFiles that don't compile to compile_fail.log file
                        echo "$pythonFiles" >> "compile_fail.log"
                fi
	fi

	# Outputs the contents of compile_fail.log to the terminal
	cat compile_fail.log

	echo " "

# Checks if Feature 3 has been selected
elif [ $choice -eq 3 ];
then

	# Finds all .html files in repository and stores output in variable, HTMLCount
	HTMLCount=$(find ~/CS1XA3 -name "*.html" | wc -l)
	echo "HTML:" $HTMLCount

	# Finds all .js files in repository and stores output in variable, JavascriptCount
	JavascriptCount=$(find ~/CS1XA3 -name "*.js" | wc -l)
	echo "Javascript:" $JavascriptCount

	# Finds all .css files in repository and stores output in variable, CssCount
        CssCount=$(find ~/CS1XA3 -name "*.css" | wc -l)
        echo "CSS:" $CssCount

	# Finds all .py files in repository and stores output in variable, PythonCount
        PythonCount=$(find ~/CS1XA3 -name "*.py" | wc -l)
        echo "Python:" $PythonCount

	# Finds all .hs files in repository and stores output in variable, HaskellCount
        HaskellCount=$(find ~/CS1XA3 -name "*.hs" | wc -l)
        echo "Haskell:" $HaskellCount

	# Finds all .sh files in repository and stores output in variable, BashCount
        BashCount=$(find ~/CS1XA3 -name "*.sh" | wc -l)
        echo "Bash:" $BashCount

	echo " "

# Checks if Feature 4 has been selected
elif [ $choice -eq 4 ];
then
	# Lists all untracked files in the repository and stores output in a variable, untracked
	env -i
	untracked=$(git ls-files ~/CS1XA3 --exclude-standard --others)

	# Iterates through each file from the output of untracked
	for file in $untracked;
	do
		# Checks if the file is a .tmp file
		if [[ $file == *.tmp ]];
		then
			echo $file "has been deleted"
			# Deletes the file
			rm $file
		fi
	done

	echo " "

# Checks if Feature 5 has been selected
elif [ $choice -eq 5 ];
then
	echo "-----------------------------------------------------------------------"
	echo "Select a feature from the following list:- "
	echo " "
	echo "1 - File Created: Finds and returns the name of the last file created"
	echo " "
	echo "2 - File Modified: Finds and returns the name of the last modified file"
	echo "-----------------------------------------------------------------------"

	echo " "
	read secondChoice
	echo " "

	if [ $secondChoice -eq 1 ];
	then

		created=$(ls -Art | tail -n 1)
		echo $created

	elif [ $secondChoice -eq 2 ];
	then

		modified=$(ls -1 -t | head -1)
		echo $modified

	fi

	echo " "
fi
