#!/usr/bin/env python3
""" A Python script that list all school documents with a specific topic
"""
from pymongo import MongoClient


def schools_by_topic(mongo_collection, topic):
    """ Returns the list of school having a specific topic.
    """
    docs = mongo_collection.find({"topics": topic})
    return [doc for doc in docs]
