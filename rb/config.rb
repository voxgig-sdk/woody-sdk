# Woody SDK configuration

module WoodyConfig
  # Return the process-wide config, built once on first use. The SDK reads
  # the config on every request and never writes to it, so one instance is
  # shared by every client rather than rebuilt per client.
  #
  # The returned hash is shared: treat it as read-only. Callers that need to
  # mutate should use make_config, which always returns a fresh copy.
  def self.shared_config
    @shared_config ||= make_config
  end


  # Build a fresh, fully materialised config hash. Every call rebuilds the
  # whole structure, so prefer shared_config unless you need a private copy
  # you intend to mutate.
  def self.make_config
    {
      "main" => {
        "name" => "Woody",
        "slug" => "woody",
        "version" => "0.0.1",
        "target" => "rb",
      },
      "feature" => {
        "test" => {
          "options" => {
            "active" => false,
          },
        },
      },
      "options" => {
        "base" => "https://woody.cat",
        "headers" => {
          "content-type" => "application/json",
        },
        "entity" => {
          "api" => {},
          "random" => {},
        },
      },
      "entity" => {
        "api" => {
          "fields" => [
            {
              "name" => "id",
              "short" => "Unique identifier for the Woody",
              "type" => "`$STRING`",
            },
            {
              "name" => "permalink",
              "short" => "Permanent link to this Woody",
              "type" => "`$STRING`",
            },
            {
              "name" => "url",
              "short" => "URL to the Woody image",
              "type" => "`$STRING`",
            },
          ],
          "name" => "api",
          "op" => {
            "load" => {
              "input" => "data",
              "name" => "load",
              "points" => [
                {
                  "args" => {
                    "params" => [
                      {
                        "kind" => "param",
                        "name" => "id",
                        "orig" => "id",
                        "reqd" => true,
                        "type" => "`$STRING`",
                      },
                    ],
                  },
                  "kind" => "http",
                  "method" => "GET",
                  "orig" => "/api/{id}",
                  "parts" => [
                    "api",
                    "{id}",
                  ],
                  "select" => {
                    "exist" => [
                      "id",
                    ],
                  },
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                },
              ],
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
        "random" => {
          "fields" => [
            {
              "name" => "id",
              "short" => "Unique identifier for the Woody",
              "type" => "`$STRING`",
            },
            {
              "name" => "permalink",
              "short" => "Permanent link to this Woody",
              "type" => "`$STRING`",
            },
            {
              "name" => "url",
              "short" => "URL to the Woody image",
              "type" => "`$STRING`",
            },
          ],
          "name" => "random",
          "op" => {
            "load" => {
              "input" => "data",
              "name" => "load",
              "points" => [
                {
                  "args" => {},
                  "kind" => "http",
                  "method" => "GET",
                  "orig" => "/api/random",
                  "parts" => [
                    "api",
                    "random",
                  ],
                  "select" => {},
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                },
              ],
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
      },
    }
  end


  def self.make_feature(name)
    require_relative 'features'
    WoodyFeatures.make_feature(name)
  end
end
