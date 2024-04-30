#!/usr/bin/env python3
""" A python script that lists all documents in a collection
"""
from pymongo import MongoClient


def list_all(mongo_collection):
    """Lists all documents in mongo_collection.
    """
    documents =[]
    for doc in mongo_collection.find():
        documents.append(doc)

    return documents
