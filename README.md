# ue-blueprint-docs
Sphinx extension and parser for Unreal Engine 4 blueprint exports 
- Displays the group of blueprint similar to an API Reference
- Allows for Directive creation based on event listener blocks in the blueprint event graph
- Discover comment blocks based on location in blueprint

## Installation
`git clone http://github.com/spigelli/ue-blueprint-docs`

`cd ue-blueprint-docs`

`python3 -m venv .venv`

`source .venv/bin/activate`

`pip3 install -r requirements.txt`

## For developers

- Sphinx extension definition in `/ue-blueprint-docs/sphinx/source/_ext/`
