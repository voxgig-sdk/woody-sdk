<?php
declare(strict_types=1);

// Woody SDK utility: result_headers

class WoodyResultHeaders
{
    public static function call(WoodyContext $ctx): ?WoodyResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result) {
            if ($response && is_array($response->headers)) {
                $result->headers = $response->headers;
            } else {
                $result->headers = [];
            }
        }
        return $result;
    }
}
