import sys
import re
import subprocess
from collections import deque

def generate_dimacs(verilog_file, num_transitions, target_state):
    subprocess.run(["python3", "generate_docu.py", verilog_file, str(num_transitions), target_state])

def solve_dimacs(dimacs_file, solution_file):
    subprocess.run(["minisat", dimacs_file, solution_file])

def parse_solution(solution_file):
    with open(solution_file, 'r') as file:
        lines = file.readlines()
    solution = []
    for line in lines:
        if line.startswith('v'):
            solution.extend(map(int, line.split()[1:]))
    return solution

def construct_state_transition_graph(solution):
    graph = {}
    for i in range(0, len(solution), 2):
        state_from = solution[i]
        state_to = solution[i + 1]
        if state_from not in graph:
            graph[state_from] = []
        graph[state_from].append(state_to)
    return graph

def find_shortest_path(graph, start_state, target_state):
    queue = deque([(start_state, [start_state])])
    visited = set()
    while queue:
        current_state, path = queue.popleft()
        if current_state == target_state:
            return path
        if current_state not in visited:
            visited.add(current_state)
            for neighbor in graph.get(current_state, []):
                queue.append((neighbor, path + [neighbor]))
    return None

def count_reachable_states(graph, start_state, max_transitions):
    reachable_counts = [0] * (max_transitions + 1)
    queue = deque([(start_state, 0)])
    visited = set()
    while queue:
        current_state, transitions = queue.popleft()
        if transitions <= max_transitions:
            reachable_counts[transitions] += 1
            if current_state not in visited:
                visited.add(current_state)
                for neighbor in graph.get(current_state, []):
                    queue.append((neighbor, transitions + 1))
    for i in range(1, max_transitions + 1):
        reachable_counts[i] += reachable_counts[i - 1]
    return reachable_counts

def main():
    verilog_files = ["ex1.v", "stoplight1.v"]
    target_states = ["11", "0100"]
    num_transitions = 20

    for verilog_file, target_state in zip(verilog_files, target_states):
        generate_dimacs(verilog_file, num_transitions, target_state)
        dimacs_file = verilog_file.replace(".v", ".dimacs")
        solution_file = verilog_file.replace(".v", "_solution.txt")
        solve_dimacs(dimacs_file, solution_file)
        solution = parse_solution(solution_file)
        graph = construct_state_transition_graph(solution)
        
        # Assuming the initial state is 0
        start_state = 0
        path = find_shortest_path(graph, start_state, target_state)
        if path:
            print(f"Shortest path to {target_state} in {verilog_file}: {path}")
        else:
            print(f"{target_state} is not reachable in {verilog_file}")

        reachable_counts = count_reachable_states(graph, start_state, num_transitions)
        print(f"Reachable states within transitions for {verilog_file}:")
        for i in range(1, num_transitions + 1):
            print(f"{i} transitions: {reachable_counts[i]} states")

if __name__ == "__main__":
    main()
