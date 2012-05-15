
exists=( $(cat projects.list | grep -i $1))

if [ "$exists" = "" ]
then
    #validate if project exists, to be added later if required
    echo project added $1
    echo $1 >> projects.list
else
    echo project already exists $exists
fi

