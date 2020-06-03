for photo in *.jpg;
do
    year=${photo:0:4}

    month=${photo#${year}-}
    day=${month#*-}
    day=${day%.*}
    month=${month%-*}


    mkdir -p ${year}/${month}
    mv $photo ${year}/${month}/"photo${day}" 
done
