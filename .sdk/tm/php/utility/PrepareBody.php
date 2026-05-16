<?php
declare(strict_types=1);

// Woody SDK utility: prepare_body

class WoodyPrepareBody
{
    public static function call(WoodyContext $ctx): mixed
    {
        if ($ctx->op->input === 'data') {
            return ($ctx->utility->transform_request)($ctx);
        }
        return null;
    }
}
