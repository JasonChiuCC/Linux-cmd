
i=0

while [ $i -lt 10 ]
do
  ps cax | grep myProcessName
  if [ $? -eq 0 ]; then
      echo "Run"
  else
      echo "stop"
      ./Path/myProcessName
      (( i++ ))
  fi
done
