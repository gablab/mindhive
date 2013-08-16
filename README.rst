========
Mindhive
========

Environment Setup
-----------------

1. First get a github_ account

.. _github: http://www.github.com

2. Setup_ git on mindhive. 

.. _Setup: https://help.github.com/articles/set-up-git

3. Setup your ssh key_ ! Follow steps 1 & 2 in 'github:help':  

.. _key: https://help.github.com/articles/generating-ssh-keys

>>> cat id_dsa.pub

  or 
  
>>> cat id_rsa.pub

  copy the key to your github account settings-->SSH Keys-->add SSH key


4. Fork the mindhive_ repository. Then in a terminal:

.. _mindhive: http://github.com/gablab/mindhive


>>> cd place/to/keep/repository
>>> git clone git@github.com/your_user_name/mindhive.git
>>> cd mindhive
>>> git remote add upstream https://github.com/gablab/mindhive.git

5. Set up symlinks to the repository in your home folder

>>> cd /place/of/repository
>>> python setup.py

6. Make sure you have a symlinked .bash_profile and .bashrc:

>>> cd
>>> ls -la

Examples
^^^^^^^^

Set your project environment to the SAD project:

>>> sad_env

You should see your prompt say "SAD"

Create a pointer to the mindhive repository for the latest project environments:

>>> cd /place/of/repository
>>> git fetch upstream
>>> git merge upstream/master

To add an environment to the mindhive repository, make a separate environment shell script in the .env (called .my_project_environment in the example) in the mindhive repository folder. Then edit the .projects file to add a function:

.. code::
  
   function my_project_env()
   {
 
   source ~/.env/.my_project_environment

   }

Commit and push the file up to your repository

>>> cd /place/of/mindhive/repo
>>> git add .env/.my_project_environment
>>> git add .projects
>>> git commit -m "added my project's environment"
>>> git push origin master


Test and send a pull request to gablab/mindhive for someone else to review and merge your changes. 

Adding SPM path
^^^^^^^^^^^^^^^

To add spm paths, setup an environment variable in your project environment file.

.. code::

    export SPM_PATH=/software/spm8_r5236/

and then edit $HOME/matlab/startup.m to include these lines (remove any lines adding SPM path)

.. code::

    spm_path = getenv('SPM_PATH');
    if spm_path, 
       addpath(spm_path);
    end

GIT Tutorials
^^^^^^^^^^^^^

Here are some great GIT tutorials:

http://nbviewer.ipython.org/urls/github.com/fperez/reprosw/raw/master/Version%2520Control.ipynb

http://mluessi.github.com/intro-to-git-and-github/#slide1
