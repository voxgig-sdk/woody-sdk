<?php
declare(strict_types=1);

// Woody SDK utility: feature_add

class WoodyFeatureAdd
{
    public static function call(WoodyContext $ctx, mixed $f): void
    {
        $ctx->client->features[] = $f;
    }
}
