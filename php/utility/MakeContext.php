<?php
declare(strict_types=1);

// Woody SDK utility: make_context

require_once __DIR__ . '/../core/Context.php';

class WoodyMakeContext
{
    public static function call(array $ctxmap, ?WoodyContext $basectx): WoodyContext
    {
        return new WoodyContext($ctxmap, $basectx);
    }
}
