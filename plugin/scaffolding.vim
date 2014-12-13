let g:ScaffoldingDirectory='/home/rain/.vim/bundle/scaffolding/'

" Vim comments start with a double quote.
" Function definition is VimL. We can mix VimL and Python in
" function definition.
function! Scaff()

python << EOF

import vim, os, sys
import shutil

def displayWelcomeMessage():
	message =  "  _____   __   ____  _____  _____   ___   _      ___    ____  ____    ____ \n"
	message += " / ___/  /  ] /    ||     ||     | /   \ | |    |   \  |    ||    \  /    |\n"
	message += "(   \_  /  / |  o  ||   __||   __||     || |    |    \  |  | |  _  ||   __|\n"
	message += " \__  |/  /  |     ||  |_  |  |_  |  O  || |___ |  D  | |  | |  |  ||  |  |\n"
	message += " /  \ /   \_ |  _  ||   _] |   _] |     ||     ||     | |  | |  |  ||  |_ |\n"
	message += " \    \     ||  |  ||  |   |  |   |     ||     ||     | |  | |  |  ||     |\n"  
	message += "  \___|\____||__|__||__|   |__|    \___/ |_____||_____||____||__|__||___,_|\n"
	message += "                            The next scaffolding generation for Vim!       \n\n"
	print(message)

def input(message = 'input: '):
	vim.command('call inputsave()')
	vim.command("let user_input = input('" + message +  " ')")
	vim.command('call inputrestore()')
	return vim.eval('user_input')

def createDirectory(path):
	# create directory if not exist
	if not os.path.exists(path):
		os.makedirs(path)

displayWelcomeMessage()

pluginDir = vim.eval("g:ScaffoldingDirectory")
templateDir = os.path.join(pluginDir, "templates", "sbt")
currentDir= os.getcwd()

projectName = input('Enter name of your new sbt project: ')

try:
	shutil.copytree(templateDir, os.path.join(currentDir, projectName))
except Exception as e:
	raise e

print("\t\nProject " + projectName + " is created.")
print("Enjoy Coding!")

input('')

EOF

endfunction

" --------------------------------
" Expose commands to the user
" --------------------------------
command! Scaff call Scaff()
