import os
import time

files = ['.bashrc','.bash_profile','.projects','.env','.nodeload']

for f in files:
    if os.path.exists(os.path.expanduser('~/%s'%f)):
        now = ''.join(time.ctime().split(' ')).replace(':','')
        newname = '~/%s_%s'%(f,now)
        cmd = 'mv ~/%s %s'%(f,newname)
        print cmd
        os.system(cmd)   
    cmd = 'ln -s %s ~/'%os.path.abspath(f)
    print cmd
    os.system(cmd)
 
if not os.path.exists(os.path.expanduser('~/.custom_env')):
    os.system('touch ~/.custom_env')

