#!/usr/bin/env bash


###### S1 ######
if [[ ! -d "student_details" ]]
then
	mkdir student_details
fi
cd student_details
curl -fL "http://14.139.189.212/s4d/s4d.txt" | grep "CHN" | awk '{s=""; for (i=3; i<=NF; i++) s=s $i " "; print s }' | sed '/^L.*/d' > s4d_student_registor_number_and_name.txt
cd ..


###### S1 ######
if [[ ! -d "s1" ]]
then
	mkdir s1
fi
cd s1
curl -fLo "result.pdf" "https://ktu.edu.in/eu/att/attachments.htm?download=file&id=G9JU3qvNaL1Bbd97S4x8QAIqBvHCL9A4lNbTXzgGtuc%3D" > /dev/null
pdftotext -nopgbrk result.pdf
grep --no-group-separator -A3 'CHN17CS' result.txt | tr '\n' ' ' | sed 's/\ CHN/\nCHN/g' > result_one_per_line.txt
cd ..


###### S2 ######
if [[ ! -d "s2" ]]
then
	mkdir s2
fi
cd s2
curl -fLo "result.pdf" "https://ktu.edu.in/eu/att/attachments.htm?download=file&id=M0BUnlNAAnhrVifaH56UXPBWJkDw2vvqDcL9YR03Q0s%3D" > /dev/null
pdftotext -nopgbrk result.pdf
grep --no-group-separator -A3 'CHN17CS' result.txt | tr '\n' ' ' | sed 's/\ CHN/\nCHN/g' > result_one_per_line.txt
cd ..


printf  "SGPA OF S1\n\n" > s1/s1_result.txt
join student_details/s4d_student_registor_number_and_name.txt s1/result_one_per_line.txt | ./compute_gpa/compute_gpa >> s1/s1_result.txt
printf  "SGPA OF S2\n\n" > s2/s2_result.txt
join student_details/s4d_student_registor_number_and_name.txt s2/result_one_per_line.txt | ./compute_gpa/compute_gpa >> s2/s2_result.txt


###### CGPA ######
foldername="cgpa"
if [[ ! -d "$foldername" ]]
then
	mkdir "$foldername"
fi
cd "$foldername"
join ../s1/result_one_per_line.txt ../s2/result_one_per_line.txt > s1_s2_with_reg.txt
join ../student_details/s4d_student_registor_number_and_name.txt s1_s2_with_reg.txt | ../compute_gpa/compute_gpa  > cgpa.txt
