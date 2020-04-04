#Confluence Space Key Renamer 
##Purpose
Atlassian does not provide an out of the box way (or easy way) for you to rename space trees. More information can be found at the link below. Basically, the only reliable way to change a space's key is to export it, change any references to that key in its export file (an entities.xml) and reimport it. This bash script will do all the replacements for you.
##How to use 
'''
sh confluenceSpaceKey.sh entitles.xml OLDKEY NEWKEY 
'''
Where OLDKEY and NEWKEY are obvious (the old space key and the new space key respectively), but must be given in upper case for now. The script automatically converts them to lower case for some of the replacements. 
##Todo
I'd like to improve the speed by using grep int he beginning to find the target lines, or by using multithreading. 