# read srr accession number file
# SRR000000
# 生成wget 命令wget ftp://ftp.ncbi.nlm.nih.gov/sra/sra-instant/reds/ByRun/sra/SRR/SRR191/SRR1916152/SRR1916152.sra
# read accession file
#    for each line:
#        generate wget cmd
import sys
#print(Sys.argv[1])
acc_file = sys.argv[1]
with open(acc_file) as acc_file_handle:
    for line in acc_file_handle:
        line = line.rstrip()
        # print(line)
        cmd_str = "wget ftp://ftp.ncbi.nlm.nih.gov/sra/sra-instant/reds/ByRun/sra/SRR/{srr_six}/{srr_acc}/{sra_file}".format(srr_six = line[0:6], srr_acc = line, sra_file = line+".sra")      
        print(cmd_str)

