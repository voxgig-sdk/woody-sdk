
import { BaseFeature } from './feature/base/BaseFeature'
import { TestFeature } from './feature/test/TestFeature'



const FEATURE_CLASS: Record<string, typeof BaseFeature> = {
   test: TestFeature,

}


class Config {

  makeFeature(this: any, fn: string) {
    const fc = FEATURE_CLASS[fn]
    const fi = new fc()
    // TODO: errors etc
    return fi
  }


  main = {
    name: 'Woody',
  }


  feature = {
     test:     {
      "options": {
        "active": false
      }
    },

  }


  options = {
    base: 'https://woody.cat',

    headers: {
      "content-type": "application/json"
    },

    entity: {
      
      api: {
      },

      random: {
      },

    }
  }


  entity = {
    "api": {
      "fields": [
        {
          "active": true,
          "name": "id",
          "req": false,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "permalink",
          "req": false,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "url",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        }
      ],
      "name": "api",
      "op": {
        "load": {
          "input": "data",
          "name": "load",
          "points": [
            {
              "active": true,
              "args": {
                "params": [
                  {
                    "active": true,
                    "kind": "param",
                    "name": "id",
                    "orig": "id",
                    "reqd": true,
                    "type": "`$STRING`",
                    "index$": 0
                  }
                ]
              },
              "kind": "http",
              "method": "GET",
              "orig": "/api/{id}",
              "parts": [
                "api",
                "{id}"
              ],
              "select": {
                "exist": [
                  "id"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "load"
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "random": {
      "fields": [
        {
          "active": true,
          "name": "id",
          "req": false,
          "type": "`$STRING`",
          "index$": 0
        },
        {
          "active": true,
          "name": "permalink",
          "req": false,
          "type": "`$STRING`",
          "index$": 1
        },
        {
          "active": true,
          "name": "url",
          "req": false,
          "type": "`$STRING`",
          "index$": 2
        }
      ],
      "name": "random",
      "op": {
        "load": {
          "input": "data",
          "name": "load",
          "points": [
            {
              "active": true,
              "args": {},
              "kind": "http",
              "method": "GET",
              "orig": "/api/random",
              "parts": [
                "api",
                "random"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              },
              "index$": 0
            }
          ],
          "key$": "load"
        }
      },
      "relations": {
        "ancestors": []
      }
    }
  }
}


const config = new Config()

export {
  config
}

