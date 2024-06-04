#!/usr/bin/python3
"""a module with one method
"""
import requests


def number_of_subscribers(subreddit):
    """ gets number of subscribers"""
    subscribers_source = requests.get(
        f'https://www.reddit.com/r/{subreddit}/about.json')
    if subscribers_source.status_code >= 300:
        return 0
    getall = subscribers_source.json()
    return getall.get("data").get("subscribers")
