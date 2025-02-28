import sys
import re

if len(sys.argv) < 2:
    print("Err1: Function needs a config file")
    exit()

config_file_name = sys.argv[1]
num_transitions = sys.argv[2]
targ_state = sys.argv[3]

print("Config file selected: " + config_file_name)
print("Number of transitions: " + str(num_transitions))
print("Target State: "+ str(targ_state))

fix = open(config_file_name, "r")
new_file_name = config_file_name.replace(".v","")
add = open(new_file_name+".dimacs","w")

num_var=dict()
var_id=1
num_lines = 0
j=0
ordered_list=[]

for file_list in fix:
	x = re.split(r'[ ,;()]+', file_list)

	if x[0] in ("input", "output", "wire", "reg"):
		for i in range(1,len(x)):
			if x[i] not in ("clock", "\n"):
				num_var[x[i]] = var_id
				var_id+=1
		if x[0] in "reg":
			for i in range(1,len(x)):
				if x[i] not in "\n":
					test_line = str(num_var[x[i]] * -1) + " 0"
					add.write(test_line+"\n")
					num_lines+=1
	
	if x[0] not in ("input", "output", "wire", "reg"):
		if len(ordered_list)==0:	
			for i in range(1,len(num_var)+1):
				ordered_list.append(i)
				
					
	if x[0] in "not":
		this_line = str(num_var[x[2]] * -1) + " " + str(num_var[x[3]] * -1) + " 0"
		that_line = str(num_var[x[2]]) + " " + str(num_var[x[3]]) + " 0"
		
		num_lines+=2	
		add.write(this_line+"\n"+that_line+"\n")

	if x[0] in "and":
		
		this_line = str(num_var[x[2]]*-1) + " " + str(num_var[x[4]]) + " 0"
		that_line = str(num_var[x[2]]*-1) + " " + str(num_var[x[3]]) + " 0"
		here_line = str(num_var[x[4]]) + " " + str(num_var[x[3]] * -1) + " " + str(num_var[x[2]] * -1) + " 0"
	
		num_lines+=3	
		add.write(this_line+"\n"+that_line+"\n"+here_line+"\n")
add.close()
new_content = "p cnf "+str(len(num_var))+" "+str(num_lines)+"\n"
header = open(new_file_name+".dimacs","r")

original = header.read()
header.close()
modified = new_content + original

add = open(new_file_name+".dimacs","w")
add.write(modified) 
add.close()

print(ordered_list)
