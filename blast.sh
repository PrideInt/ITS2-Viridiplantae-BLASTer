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
    done

