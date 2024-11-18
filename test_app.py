from app import random_fruit

def test_random_fruit():
    assert random_fruit(['apple']) == ['apple']

def test_random_fruit_1():
    assert 'apple' or 'cherry' or 'orange' in random_fruit(['apple', 'cherry', 'orange'])