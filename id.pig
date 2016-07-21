A = load '/tmp/student/student.txt' using PigStorage('\t');
B = foreach A generate $0 as id; 
store B into '/tmp/id.out';

