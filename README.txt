cpl.pl is Otten's CPL ATP from the tutorial.
wipl.pl is WIPL: my IPL ATP.
________________________________________________________________________________

The folder ILTP contains the ILTP library problems, as downloaded from the ILTP site (http://www.iltp.de/formulae.html).
________________________________________________________________________________

The folder ILTP_CONVERTED contains the ILTP library problems after being converted to a syntax my prover can accept,
with negation rewritten for now (e.g. ~P becomes P => false). This folder can be recreated from the original ILTP folder
by running the following command:

bash convert_ILTP_format.sh
________________________________________________________________________________

The intuitionistic statuses (ground truths) of the ILTP problems have been extracted into the file ILTP_statuses.txt.
This file can be recreated from the original ILTP folder by running the following command:

bash extract_ILTP_statuses.sh
________________________________________________________________________________

WIPL can be run on the converted ILTP problems by means of running the following script:

run.sh
________________________________________________________________________________

The file results_with_manual_termination.txt contains the result of running the above script
(but manually terminating testcases where a solve is out of the question, namely when it is a
larger version of the same abstract problem that already has had a time-out).

________________________________________________________________________________

The table in 'processed results.pdf' contains the processed results, produced by comparing
each problem's status in ILTP_statuses.txt to its result in results_with_manual_termination.txt .
Each column represents a chunk of problems (for easier verification), and each row indicates
how many problems per chunk (column) follow a certain format of
	Status->Result,
where:
- Status is the intuitionistic status of the problem (abbreviated as T for Theorem, F for Non-Theorem, U for Unsolved),
as taken from ILTP_statuses.txt
- Result is the result of executing WIPL on the problems in that chunk, as taken from results_with_manual_termination.txt.
________________________________________________________________________________

Unfortunately, for some cases it is very slow and/or gives errors.
