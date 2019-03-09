import sys
from time import time
start_nb = time()
import gensim.models.keyedvectors as word2vec
from gensim.models import KeyedVectors


# Initialize logging.
import logging
logging.basicConfig(format='%(asctime)s : %(levelname)s : %(message)s')


a = sys.argv[1]
b = sys.argv[2]



print 'Calculating Similarity Score between Patient ' + a + ' and ' + 'Patient ' + b

f1 = open("txtData/"+str(a)+".txt", "r")
f2 = open("txtData/"+str(b)+".txt", "r")



sentence_1 = f1.read()
sentence_2 = f2.read()
sentence_1 = sentence_1.lower().split()
sentence_2 = sentence_2.lower().split()


start = time()
import os

from gensim.models import Word2Vec

    
model = KeyedVectors.load_word2vec_format("vectors.txt", binary=False)

print('Time taken to import vectors: %.2f seconds' % (time() - start))




# Normalizing word2vec vectors.
start = time()

model.init_sims(replace=True)  # Normalizes the vectors in the word2vec class.

distance = model.wmdistance(sentence_1, sentence_2)  # Compute WMD as normal.


print 'Calculating similarity took %.2f seconds to run.' %(time() - start)

print 'Distance: ' + str(distance)

d = distance
sim = 1/(1+d)


print 'Similarity: ' + str(sim)






