TODO
- Fix structire; remove old files, fix name for parser
- Add scotty
- Hook up scotty with parser
    - Accepts request
    - Parse it
    - Return parsed result

Source

--
# An employee record
name: Martin D'vloper
job: Developer
skill: Elite
employed: True
foods:
    - Apple
    - Orange
    - Strawberry
    - Mango
languages:
    perl: Elite
    python: Elite
    pascal: Lame
education: |
    4 GCSEs
    3 A-Levels
    BSc in the Internet of Things

- Parse person object:
name: Martin D'vloper
job: Developer
skill: Elite
employed: True

- Parse dictionary
languages:
    perl: Elite
    python: Elite
    pascal: Lame

- Parse list
foods:
    - Apple
    - Orange
    - Strawberry
    - Mango

Parse string with new lines
education: |
    4 GCSEs
    3 A-Levels
    BSc in the Internet of Things

