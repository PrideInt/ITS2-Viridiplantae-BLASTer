# De Novo Assembly Contigs to BLASTing

> In progress. BLASTing against the database works. Automation next.

A simple script designed to BLAST de novo assembled contigs against the ITS2 Viridiplantae database and automate species hit ratio visualization.

The plant database was gathered from ITS2' Viridiplantae dataset. The FASTA file is also included in this package, but you are free to download your own
over here at [The ITS2 Wuerzburg Database](https://its2.bioapps.biozentrum.uni-wuerzburg.de/) and manipulate the script for your own usage (it's a one line
directory name change, so no coding necessary).

## What You Need

You will need to download [BLAST+](https://blast.ncbi.nlm.nih.gov/doc/blast-help/downloadblastdata.html#downloadblastdata) before doing anything.

Once downloaded, you should be set to go.

Though, you may or may not need applications to help executing Shell scripts.
If you are on Linux or Mac, no need to install any other programs. If you are on Windows or a non-UNIX system, you may want to install Git [here](https://www.git-scm.com/downloads) and run the script on Git Bash.

Additionally, you will need Python to run the formatting script. Install Python [here](https://www.python.org/downloads/).

## Usage

1. Download this package and extract the files. Make sure to also create a folder named `contigs` prior to running the script.

2. Make a BLAST database to BLAST your contigs on by running the following in your `database` directory in Terminal or PowerShell: `makeblastdb -in .\ITS2-VIRIDIPLANTAE.fasta -dbtype nucl -out PLANT/PLANT`.
- (You don't have to name the database `PLANT` if you don't want to. You can change "`PLANT/PLANT`" to whatever you want, but you'll have to update this in the script as well
later.)

3. Run the Shell Script. Do this via `./blast.sh` on Linux, or `sh blast.sh` on Mac or on Git Bash, `bash blast.sh`.

4. Once the script finishes processing, run `python format.py` to run the formatting script (translates information such as reads, similar species, etc. into a CSV file). Check out `format.txt` for additional code.
