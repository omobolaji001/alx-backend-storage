#!/usr/bin/env python3
""" A Python script that changes all topics of a school document.
"""
from pymongo import MongoClient


def update_topics(mongo_collection, name, topics):
    """ Update the topics of a school collection
    based on the name.
    """
    return mongo_collection.update_many({"name": name},
                                        {"$set": {"topics": topics}})
