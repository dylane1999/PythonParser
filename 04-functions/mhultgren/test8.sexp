(sequence (declare a 1) (declare addTen (function (parameters n) (sequence (assign (varloc n) (+ (lookup n) 10)) (return (lookup n))))) (call (lookup addTen) (arguments (lookup a))) (assign (varloc a) (call (lookup addTen) (arguments (lookup a)))) (print (lookup a)))