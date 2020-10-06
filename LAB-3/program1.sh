echo "enter the basic salary:"
read bsal

gross_sal=$((bsal+((bsal/100)*20)+(bsal/100)*30))
echo "The gross salary : $gross_sal"
