import re
import sys

def process_file(filepath):
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    # We will use a regex to find each pair section and replace the target subsections.
    # A pair section starts with `## vs [`
    
    # Since writing a full LLM generation script in python is complex, I will just generate the content directly using str replace or write.
