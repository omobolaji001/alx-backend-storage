#!/usr/bin/env python3
""" A Python script that inserts a new document in a collection.
"""
from pymongo import MongoClient


def insert_school(mongo_collection, **kwargs):
    """ Inserts a new document in a collection
    based on *kwargs.
    """
    document = mongo_collection.insert_one(kwargs)
    return document.inserted_id
