let g:ScaffoldingDirectory='/home/rain/.vim/bundle/scaffolding/'

" Vim comments start with a double quote.
" Function definition is VimL. We can mix VimL and Python in
" function definition.
function! Scaff()

python << EOF

import vim, os, sys
import shutil

def display_welcome_message():
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

def create_project(project_type, project_name):
	plugin_dir = vim.eval("g:ScaffoldingDirectory")
	template_dir = os.path.join(plugin_dir, "templates", project_type)
	current_dir= os.getcwd()
	try:
		shutil.copytree(template_dir, os.path.join(current_dir, project_name))
	except Exception as e:
		raise e

def display_success_message(project_name):
	print("\t\nProject " + project_name + " is created.")
	print("Enjoy Coding!")
	input('')

def display_fail_message():
	print("\t\nWhat a Shame! We can not help you create your next awesome project >.<")
	input('')

SUPPORTED_PROJECT_TYPES= ['python', 'sbt']

display_welcome_message()

can_continue = True 
is_create = True
while can_continue:
	project_type = input('Enter type of project (python, sbt, q for quit): ')
	if(project_type == 'q'):
		is_create = False
		can_continue = False
	else:
		if(project_type in SUPPORTED_PROJECT_TYPES):
			can_continue = False
		else:
			print("\t\nWe just supported for 'python' or 'sbt' project")

if(is_create):
	project_name = input('Enter name of project: ')
	create_project(project_type, project_name)
	display_success_message(project_name)
else:
	display_fail_message()

EOF

endfunction

" --------------------------------
" Expose commands to the user
" --------------------------------

command! Scaff call Scaff()
