<?php
declare(strict_types=1);

// Woody SDK utility: result_body

class WoodyResultBody
{
    public static function call(WoodyContext $ctx): ?WoodyResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result && $response && $response->json_func && $response->body) {
            $result->body = ($response->json_func)();
        }
        return $result;
    }
}
