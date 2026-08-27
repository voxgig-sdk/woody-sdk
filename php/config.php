<?php
declare(strict_types=1);

// Woody SDK configuration

class WoodyConfig
{
    /** @var array<string,mixed>|null */
    private static ?array $shared_config = null;

    /**
     * Return the process-wide config, built once on first use. The SDK reads
     * the config on every request and never writes to it, so one instance is
     * shared by every client rather than rebuilt per client.
     *
     * PHP arrays are copy-on-write, so callers that do mutate the result get
     * their own copy and cannot disturb the shared one.
     */
    public static function shared_config(): array
    {
        if (self::$shared_config === null) {
            self::$shared_config = self::make_config();
        }
        return self::$shared_config;
    }

    /**
     * Build a fresh, fully materialised config array. Every call rebuilds the
     * whole structure, so prefer shared_config unless you need a private copy.
     */
    public static function make_config(): array
    {
        return [
            "main" => [
                "name" => "Woody",
                "slug" => "woody",
                "version" => "0.0.1",
                "target" => "php",
            ],
            "feature" => [
                "test" => [
          'options' => [
            'active' => false,
          ],
          'transport' => 'base',
        ],
            ],
            "options" => [
                "base" => "https://woody.cat",
                "headers" => [
          'content-type' => 'application/json',
        ],
                "entity" => [
                    "api" => [],
                    "random" => [],
                ],
            ],
            "entity" => [
        'api' => [
          'fields' => [
            [
              'name' => 'id',
              'short' => 'Unique identifier for the Woody',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'permalink',
              'short' => 'Permanent link to this Woody',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'url',
              'short' => 'URL to the Woody image',
              'type' => '`$STRING`',
            ],
          ],
          'name' => 'api',
          'op' => [
            'load' => [
              'input' => 'data',
              'name' => 'load',
              'points' => [
                [
                  'args' => [
                    'params' => [
                      [
                        'kind' => 'param',
                        'name' => 'id',
                        'orig' => 'id',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'GET',
                  'orig' => '/api/{id}',
                  'parts' => [
                    'api',
                    '{id}',
                  ],
                  'select' => [
                    'exist' => [
                      'id',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                ],
              ],
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'random' => [
          'fields' => [
            [
              'name' => 'id',
              'short' => 'Unique identifier for the Woody',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'permalink',
              'short' => 'Permanent link to this Woody',
              'type' => '`$STRING`',
            ],
            [
              'name' => 'url',
              'short' => 'URL to the Woody image',
              'type' => '`$STRING`',
            ],
          ],
          'name' => 'random',
          'op' => [
            'load' => [
              'input' => 'data',
              'name' => 'load',
              'points' => [
                [
                  'args' => [],
                  'kind' => 'http',
                  'method' => 'GET',
                  'orig' => '/api/random',
                  'parts' => [
                    'api',
                    'random',
                  ],
                  'select' => [],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                ],
              ],
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
      ],
        ];
    }


    public static function make_feature(string $name)
    {
        require_once __DIR__ . '/features.php';
        return WoodyFeatures::make_feature($name);
    }
}
