#!/usr/bin/env python3
import json
import os

def find_first_unchecked(elements):
    for element in elements:
        tmp = element.replace(" ", "")

        if tmp.startswith('[]'):
            tmp = element.replace('[', "", 1).replace(']', "", 1).strip()
            if tmp[-2:] == '\\n':
                tmp = tmp[:-2]
            return tmp
    return None

def convert_md_to_html(markdown_text):
    markdown_text = markdown_text.replace('\\**', '')
    markdown_text = markdown_text.replace('\\*', '')
    markdown_text = markdown_text.replace('\\==', '')
    
    # Convert bold text
    while '**' in markdown_text:
        markdown_text = markdown_text.replace('**', '<b>', 1).replace('**', '</b>', 1)
    
    # Convert italic text
    while '*' in markdown_text:
        markdown_text = markdown_text.replace('*', "<i>", 1).replace('*', '</i>', 1)
    
    # Convert highlight
    while '==' in markdown_text:
        markdown_text = markdown_text.replace('==', "<span bgcolor='#1f692a'>", 1).replace('==', '</span>', 1)

    markdown_text = markdown_text.replace('-', "&#x2022;")
    # ck box ☐☑
    for char in ['[ ]', '[]']:
        markdown_text = markdown_text.replace(char, "☐")
    markdown_text = markdown_text.replace('[x]', "✔")

    return markdown_text

with open(f"{os.getenv('HOME')}/.local/bin/tasks.md", 'r') as file:
    content = file.read()

try:
    tasks = content.split("-", 1)[1].split("-")
    tooltip = convert_md_to_html(content)
    text = convert_md_to_html(find_first_unchecked(tasks))
except:
    tooltip = "no tasks <b>(file empty)</b>"
    text = "<i>task</i>"

data = {
    "text" : text,
    "tooltip" : tooltip
}

print(json.dumps(data))