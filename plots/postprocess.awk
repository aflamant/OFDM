{
    if ($4 <= 0.02) {
        if (!($1$3 in alreadyFound)) {
            alreadyFound[$1$3] = 1;
            print $1,$2,$3,$5
        }
    }
}
