#!/bin/bash
#SBATCH -t 4:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=8GB
#SBATCH -o jobpasc.out       
#SBATCH --job-name=pascal
#SBATCH --error=jobpasc.err            
#SBATCH --output=jobpasc.out           

swipl --stack-limit=20g -s test1.pl -g "induce_pascal([train],P),test_pascal(P,[test],LL,AUCROC,ROC,AUCPR,PR)." -g halt
