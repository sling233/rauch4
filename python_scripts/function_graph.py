import glob
import os
import re

class function_node:
    def __init__(self,id):
        self.id = id
        self.calls = []
        self.called_by = []

    def __str__(self):
        return "id: " + self.id + ", calls: " + str(self.calls)


class function_graph:
    root_nodes = set()
    functions = set()
    calls = dict() # caller -> set(called)
    called_by = dict() # called -> set(caller)

    def add_call(self, caller_id, called_id):
        if not caller_id in self.calls:
            self.calls[caller_id] = set()
        self.calls[caller_id].add(called_id)

        if not called_id in self.called_by:
            self.called_by[called_id] = set()
        self.called_by[called_id].add(caller_id)


functions = glob.glob(r'../data/rauch/function/**/*.mcfunction', recursive=True)
advancements = glob.glob(r'../data/rauch/advancement/**/*.json', recursive=True)
enchantments = glob.glob(r'../data/rauch/enchantment/**/*.json', recursive=True)

command_call = re.compile(r".*function rauch:([\w./$\(\)]+)")
foreach_call = re.compile(r".*function rauch:macros/.*foreach.*rauch:([\w./$\(\)]+)")
json_call = re.compile(r".*rauch:([\w/]+)")

graph = function_graph()

# make graph
for file in functions:
    function_id = os.path.relpath(file,"../data/rauch/function/").replace("\\","/").removesuffix('.mcfunction')
    graph.functions.add(function_id)

    with open(file, 'r', encoding='utf-8') as f:
        lines = f.readlines()
    
    is_comment_from_last = False

    for line in lines:
        stripped = line.strip()
        
        if len(stripped) == 0:
            is_comment_from_last = False
            continue
    
        if is_comment_from_last:
            if stripped[-1] == "\\":
                is_comment_from_last = True
            else:
                is_comment_from_last = False
            continue

        if stripped[0] == "#":
            if stripped[-1] == "\\":
                is_comment_from_last = True
            continue
    
        function_match = command_call.match(line)
        if function_match:
            call_id = function_match.group(1)
            graph.add_call(function_id, call_id)

        function_match = foreach_call.match(line)
        if function_match:
            call_id = function_match.group(1)
            graph.add_call(function_id, call_id)


# set root nodes
for json_thing in advancements + enchantments:
    with open(json_thing,'r') as f:
       lines = f.readlines()

    for line in lines:
        asdf = json_call.match(line)
        if asdf:
            graph.root_nodes.add(asdf.group(1))

    graph.root_nodes.add("main")
    graph.root_nodes.add("setup")


# find calls going nowhere
#invalid_calls = set()
print("Invalid Calls:")
for function, call_list in graph.calls.items():
    for call in call_list:
        if not call in graph.functions:
            #invalid_calls.add((call, function))
            print(f"{call} (called by rauch:{function})")



# find functions not called by anything
orphans = graph.functions.difference(graph.called_by.keys())
orphans = orphans.difference(graph.root_nodes)
print("\nOrphaned Functions:")
for orphan in sorted(orphans):
    print(orphan)


# functions called by functions not called by anything
def connected_to_root_rec(id,checked):
    if id in graph.root_nodes:
        return True
    
    if id in orphans: return False
    checked.add(id)

    for parent in graph.called_by[id]:
        if parent in checked: continue

        if connected_to_root_rec(parent,checked):
            return True
        
    return False

def connected_to_root(id):
    checked = set()
    return connected_to_root_rec(id, checked)

disconnected = set()
for function in graph.functions:
    if not connected_to_root(function):
        disconnected.add(function)

disconnected_without_orphans = disconnected.difference(orphans)

print("\nOrphan children:")
for child in sorted(disconnected_without_orphans):
    called_by = "\n"
    for dings in graph.called_by[child]:
        called_by += f"    {dings}\n"

    print(f"{child} (called by {called_by})")
