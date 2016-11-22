#!/usr/bin/env	ruby
#	KING	SABRI	|	@KINGSABRI
#	
require	'readline'
#	Prevent	Ctrl+C	for	exiting
trap('INT',	'SIG_IGN')
#	List	of	commands
CMDS	=	[	'help',	'rubyfu',	'ls',	'pwd',	'exit'	].sort
completion	=	proc	{	|line|	CMDS.grep(	/^#{Regexp.escape(line)}/	)	}
#	Console	Settings
Readline.completion_proc	=	completion								#	Set	completion	process
Readline.completion_append_character	=	'	'			#	Make	sure	to	add	a	space	after	completion
while	line	=	Readline.readline('->	',	true)
	puts	line	unless	line.nil?	or	line.squeeze.empty?
	break	if	line	=~	/^quit.*/i	or	line	=~	/^exit.*/i
end