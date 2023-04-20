#! bin/bash
file_count (){
    cf=$(find "$(pwd)" -type f | wc -l)
    echo "total number of files are" $cf
}
file_count
