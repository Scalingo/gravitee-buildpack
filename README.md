# Presentation 

 Gravitee is an open source API platform developed by [gravitee.io](https://www.gravitee.io/).    
    
A buildpack is a set of scripts which aims at:    
  
 - Detecting the language of an application (**detect**)  
 - Installing the dependencies of a project (**compile**)  
 - Defining how the application should be started (**release**)  
  
# Architecture of a Buildpack

 A buildpack has three mandatory entrypoints:    
  
 - bin/detect: exit with success (return code is 0) if the buildpack
   applies to the current application.
 - bin/compile: installs the technology.
 - bin/release: handles some metadata.
  
**All these entrypoints are Bash script.**    
  
Script detect:   The purpose of the script located in bin/detect is to detect if the buildpack applies to the application.
>  It takes the build directory in argument. If the buildpack is applicable, the script must  
> print on the standard output the name of the technology and return  with the code 0.  

Script compile:   The purpose of the script located in bin/compile is to actually compile the application. It is called with three   arguments:      
> The build directory: contains the code of the application.   
> The cache directory: used to store information one want to keep between two builds.
> The environment directory: contains a  file per environment variable defined.

Script release:   The purpose of the script located in bin/release is to generate some metadata about the application. 
> It takes the build directory in argument.
