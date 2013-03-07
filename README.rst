========
Mindhive
========

Environment Setup
-----------------

1. First get a github_ account

.. _github: http://www.github.com

2. Setup_ git on mindhive. Don't forget to setup your ssh key_ ! 

.. _Setup: https://help.github.com/articles/set-up-git

.. _key: https://help.github.com/articles/generating-ssh-keys

3. Fork the mindhive_ repository. Then in a terminal:

.. _mindhive: http://github.com/gablab/mindhive


>>> cd place/to/keep/repository
>>> git clone https://github.com/your_user_name/mindhive.git
>>> cd mindhive
>>> git remote add upstream https://github.com/gablab/mindhive.git

4. Symlink to the repository in your home folder

>>> cd
>>> ln -s place/of/repository/mindhive/* ./

5. Make sure you have a symlinked .bash_profile and .bashrc:

>>> cd
>>> ls -la

Examples
^^^^^^^^

Set your project environment to the SAD project:

>>> sad_env

You should see your prompt say "SAD"

Update the mindhive repository for the latest project environments:

>>> cd /place/of/repository
>>> git fetch upstream
>>> git merge upstream/master

To add an environment to the mindhive repository, make a separate environment shell script (called .my_project_environment in the example) in the mindhive repository folder. Then edit the .projects file to add a function:

.. code::
  
   function my_project_env()
   {
 
   source .my_project_environment

   }

Commit and push the file up to your repository

>>> cd /place/of/mindhive/repo
>>> git add .my_project_environment
>>> git add .projects
>>> git commit -m "added my project's environment"
>>> git push origin master

Remember to add a symlink to your newest environment file in your home folder, and test it.

>>> cd
>>> ln -s /place/of/mindhive/repository/.my_project_environment ./
>>> my_prohect_env

Finally, send a pull request to gablab/mindhive for someone else to review and merge your changes. 

GIT Tutorials
^^^^^^^^^^^^^

Here are some great GIT tutorials:

http://nbviewer.ipython.org/urls/github.com/fperez/reprosw/raw/master/Version%2520Control.ipynb

http://mluessi.github.com/intro-to-git-and-github/#slide1
