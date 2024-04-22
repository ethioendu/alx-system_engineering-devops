#!/usr/bin/python3
"""
a Python script that, using this REST API, for a given employee ID,
returns information about his/her TODO list progress.
"""

import requests
import sys
if __name__ == "__main__":
    user_id = sys.argv[1]
    url = "https://jsonplaceholder.typicode.com/"
    user = requests.get(url + "users/{}".format(sys.argv[1])).json()
    todos = requests.get(url + "todos", params={"userId": sys.argv[1]}).json()
    finished = [t.get('title') for t in todos if t.get('completed') is True]
    print("Employee {} is done with tasks({}/{}):".format(
        user.get("name"), len(finished), len(todos)))
    [print("\t {}".format(c)) for c in finished]
