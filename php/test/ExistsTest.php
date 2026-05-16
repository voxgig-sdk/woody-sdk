<?php
declare(strict_types=1);

// Woody SDK exists test

require_once __DIR__ . '/../woody_sdk.php';

use PHPUnit\Framework\TestCase;

class ExistsTest extends TestCase
{
    public function test_create_test_sdk(): void
    {
        $testsdk = WoodySDK::test(null, null);
        $this->assertNotNull($testsdk);
    }
}
