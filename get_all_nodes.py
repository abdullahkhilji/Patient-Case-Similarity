import re
import os

all_nodes = []

for filename in os.listdir("../../Sample Dataset/NER_XML_Old/"):
    if filename.endswith(".xml"):
        with open('../../Sample Dataset/NER_XML_Old/'+filename) as f:
            nodes_of_one_xml_file = re.findall('^<*.[^\s]+\s', f.read(), re.MULTILINE)
        all_nodes.append(nodes_of_one_xml_file)

b = sum(all_nodes, [])

for i in range(len(b)):
    pre = b[i]
    pre = pre.split('<')[-1]
    pre = pre.split('</')[-1]
    pre = pre.split('>')[0]
    pre = pre.split('/>')[0]
    pre = pre.split('/')[-1]
    pre = pre.replace(" ", "")
    b[i] = pre

b = set(b)


with open('1.txt', 'w') as f1:
    for i in b:
        f1.write(i)
        f1.write("\n")


