## Simple Docker Image with Truffle/Node/NPM.

### Setup

 - Clone this repo  
 
   ```bash
   % git clone git@github.com:juztin/truffle.git
   ```

 - Copy/symlink `bin/truffle` to a location in your path  
   _eg._  
   
   ```bash
   % ln -s {repo-path}/bin/truffle ~/bin/truffle
   ```
 
 - Add the environment variable, `TRUFFLE_VERSION`, to your profile, setting it to the version you want to target.  
 
   ```bash
   % echo "TRUFFLE_VERSION=4.1.8" >> ~/.profile
   ```

You should now be able to invoke Truffle like you normally would.
