import os

files = ['.bashrc','.bash_profile','.projects','.env','.nodeload']

for f in files:
    if not os.path.exists(os.path.expanduser('~/%s'%f)):
        cmd = 'ln -s %s ~/'%os.path.abspath(f)
        print cmd
        os.system(cmd)
