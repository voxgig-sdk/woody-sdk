# Woody SDK configuration


def make_config():
    return {
        "main": {
            "name": "Woody",
        },
        "feature": {
            "test": {
        "options": {
          "active": False,
        },
      },
        },
        "options": {
            "base": "https://woody.cat",
            "headers": {
        "content-type": "application/json",
      },
            "entity": {
                "api": {},
                "random": {},
            },
        },
        "entity": {
      "api": {
        "fields": [
          {
            "active": True,
            "name": "id",
            "req": False,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "permalink",
            "req": False,
            "type": "`$STRING`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "url",
            "req": False,
            "type": "`$STRING`",
            "index$": 2,
          },
        ],
        "name": "api",
        "op": {
          "load": {
            "input": "data",
            "name": "load",
            "points": [
              {
                "active": True,
                "args": {
                  "params": [
                    {
                      "active": True,
                      "kind": "param",
                      "name": "id",
                      "orig": "id",
                      "reqd": True,
                      "type": "`$STRING`",
                      "index$": 0,
                    },
                  ],
                },
                "kind": "http",
                "method": "GET",
                "orig": "/api/{id}",
                "parts": [
                  "api",
                  "{id}",
                ],
                "select": {
                  "exist": [
                    "id",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "load",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "random": {
        "fields": [
          {
            "active": True,
            "name": "id",
            "req": False,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "permalink",
            "req": False,
            "type": "`$STRING`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "url",
            "req": False,
            "type": "`$STRING`",
            "index$": 2,
          },
        ],
        "name": "random",
        "op": {
          "load": {
            "input": "data",
            "name": "load",
            "points": [
              {
                "active": True,
                "args": {},
                "kind": "http",
                "method": "GET",
                "orig": "/api/random",
                "parts": [
                  "api",
                  "random",
                ],
                "select": {},
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "load",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
    },
    }
