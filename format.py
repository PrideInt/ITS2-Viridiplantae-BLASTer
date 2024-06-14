import os
import csv

info = []

for contig in os.listdir("./contigs"):
    if contig.endswith(".fasta"):
        continue
    file = open("./contigs/" + contig, "r")
    lines = file.readlines()

    genus = lines[22].split(" ")[1]
    species = lines[22].split(" ")[2]

    info.append({ "Contig": contig[:-4], "Genus": genus, "Species": species })

with open("format.csv", "w") as csv_handle:
    writer = csv.DictWriter(csv_handle, fieldnames = info[0].keys())
    writer.writeheader()
    for info in info:
        writer.writerow(info)
    csv_handle.close()