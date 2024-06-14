mkdir -p contigs

# Get all contigs from the contigs folder
CONTIGS=`ls ./contigs/*.fasta`

# Loop through all contigs
for CONTIG in $CONTIGS
    do
        echo "BLASTING CONTIG:" $CONTIG

        FILE_NAME="$(basename $CONTIG .fasta)"

        echo "CREATING CONTIG DATA:" $FILE_NAME

        # Run blast
        blastn -db database/PLANT/PLANT -query $CONTIG -out ./contigs/$FILE_NAME.txt

        # If you changed the BLAST database name from PLANT/PLANT to something else, you can
        # comment out the above line and uncomment the below line to change your
        # script accordingly. Just replace <>/<> with whatevever you named your database.

        # blastn -db database/<>/<> -query $CONTIG -out ./contigs/$FILE_NAME.txt
    done

