#!/bin/bash

# Take the filename
read -p 'Enter the filename to delete: ' filename


# Check the file is exists or not
if [ -f $filename ]; then
   # Remove  the file with permission
   rm -i "$filename"

   # Check the file is removed or not
   if [ -f $filename ]; then
      echo "$filename is not removed"
   else
      echo "$filename is removed"
   fi
else
   echo "File does not exist"
fi
