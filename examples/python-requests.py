#! python3
# -*- coding: utf-8 -*-

"""
5e-api.com DND Character Generator.

Using the Dungeons and Dragons 5e API published on github by BReynolds-dev, we
can script REST API pulls of information for a character builder or reference
program.
"""
import requests    # requires pip installation

''' Constant Definitions '''
API_URL = 'http://5e-api.com/v1/'

# Grab JSON data
data = requests.get(API_URL + 'classes').json()
data1 = requests.get(API_URL + 'races').json()
data2 = requests.get(API_URL + 'abilities').json()

# List of classes
class_dict = {}

for index, classes in enumerate(data['class_options']):
    class_dict[index] = classes
    print('{}. {} - {}'.format(index, classes,
          data['class_options'][classes]['short_description']))

class_choice = input('\nSelect class: ')

class_choice = class_dict[int(class_choice)]

print(data['class_options'][class_choice])
print(requests.get(data['class_options'][class_choice]['url']).json())

print('*' * 10)

# List of races
race_dict = {}

for index, races in enumerate(data1):
    race_dict[index] = races
    print('{}. {}'.format(index, races['name']))

race_choice = int(input('\nSelect race: '))

print(data1[race_choice])
print(requests.get(data1[race_choice]['url']).json())

print('*' * 10)

# List of abilities
for ability in data2:
    print(ability['name'])
