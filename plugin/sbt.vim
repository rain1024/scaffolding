let g:ScaffoldingDirectory='/home/rain/.vim/bundle/scaffolding/'

" Vim comments start with a double quote.
" Function definition is VimL. We can mix VimL and Python in
" function definition.
function! SbtScaff()

" We start the python code like the next line.

python << EOF

# the vim module contains everything we need to interface with vim from
# python. We need urllib2 for the web service consumer.
import vim, os, sys
import shutil

print("Execute SbtScaff() function")

def input(message = 'input: '):
	vim.command('call inputsave()')
	vim.command("let user_input = input('" + message +  " ')")
	vim.command('call inputrestore()')
	return vim.eval('user_input')

def createDirectory(path):
	# create directory if not exist
	if not os.path.exists(path):
		os.makedirs(path)

pluginDir = vim.eval("g:ScaffoldingDirectory")
templateDir = os.path.join(pluginDir, "templates", "sbt")
currentDir= os.getcwd()
projectName = "abc"
input('Sbt Scaffoding\nCreate new sbt project')

projectName = input('Enter your project name :')

try:
	shutil.copytree(templateDir, os.path.join(currentDir, projectName))
except Exception as e:
	raise e

EOF
" Here the python code is closed.
" We can continue writing VimL or python again.

endfunction
