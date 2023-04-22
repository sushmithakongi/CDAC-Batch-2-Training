echo -n the shortest username is 
cut -d: -f1 /etc/passwd | awk '{print length, $0}' | sort -n | head -n 1
echo the longest username is
cut -d: -f1 /etc/passwd | awk '{print length, $0}' | sort -rn | head -n 1
