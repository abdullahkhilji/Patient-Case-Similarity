import pandas as pd
f = open('vectors.txt', 'r')

matrix = []
for line in f:
    fin = []
    vector = []
    for word in line.split():
        vector.append(word)
        
    fin.append(vector[0])
    
    for i in range (1, 51):
        fin.append(float(vector[i]))
    
    matrix.append(fin)

import multiprocessing
a111 = range(0, 9412)

def asdf(var):
    filename = str("new_m/") + str(var) + str(".txt")
    file = open(filename, 'r') 
    
    x = file.readline()
    a = list(x.split(" "))
    vectors = []
    for item in a:
        for i in range (22310):
            if item == matrix[i][0]:
                vec = []
                for k in range (1, 51):
                    vec.append(matrix[i][k])
                vectors.append(vec)
                
                
    dataframe = pd.DataFrame(vectors)
    filename_d = str("new_m/replaced/") + str(var) + str(".csv")
    dataframe.to_csv(filename_d)
    
    
pool = multiprocessing.Pool(processes=10)
r = pool.map(asdf, a111)
pool.close()
     