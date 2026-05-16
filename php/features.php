<?php
declare(strict_types=1);

// Woody SDK feature factory

require_once __DIR__ . '/feature/BaseFeature.php';
require_once __DIR__ . '/feature/TestFeature.php';


class WoodyFeatures
{
    public static function make_feature(string $name)
    {
        switch ($name) {
            case "base":
                return new WoodyBaseFeature();
            case "test":
                return new WoodyTestFeature();
            default:
                return new WoodyBaseFeature();
        }
    }
}
