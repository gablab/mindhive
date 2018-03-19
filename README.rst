========
Openmind
========

Environment Setup
-----------------

This covers Linux/Mac setup instructions.

1. Sign into openmind using Terminal or another terminal emulator.

>>> ssh USERNAME@openmind7.mit.edu
If any authentication message appears, type `yes`. This will happen on your first sign-in.

2. Clone this (mindhive_) repository.

>>> cd ~
>>> git clone https://github.com/gablab/mindhive.git

3. Run the setup script

>>> cd ~/mindhive
>>> bash setup.sh

4. Activate your changes and you are finished!

>>> source ~/.bashrc

----------------------------------------
Additional resources
----------------------------------------

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
