<?php
declare(strict_types=1);

// Woody SDK base feature

class WoodyBaseFeature
{
    public string $version;
    public string $name;
    public bool $active;

    // Positions this feature when added via the client `extend` option:
    // "__before__" / "__after__" / "__replace__" name an already-added
    // feature (mirrors the ts feature `_options`). Declared so setting it
    // on an extension instance avoids the dynamic-property deprecation.
    public ?array $_options = null;

    public function __construct()
    {
        $this->version = '0.0.1';
        $this->name = 'base';
        $this->active = true;
    }

    public function get_version(): string { return $this->version; }
    public function get_name(): string { return $this->name; }
    public function get_active(): bool { return $this->active; }

    public function init(WoodyContext $ctx, array $options): void {}
    public function PostConstruct(WoodyContext $ctx): void {}
    public function PostConstructEntity(WoodyContext $ctx): void {}
    public function SetData(WoodyContext $ctx): void {}
    public function GetData(WoodyContext $ctx): void {}
    public function GetMatch(WoodyContext $ctx): void {}
    public function SetMatch(WoodyContext $ctx): void {}
    public function PrePoint(WoodyContext $ctx): void {}
    public function PreSpec(WoodyContext $ctx): void {}
    public function PreRequest(WoodyContext $ctx): void {}
    public function PreResponse(WoodyContext $ctx): void {}
    public function PreResult(WoodyContext $ctx): void {}
    public function PreDone(WoodyContext $ctx): void {}
    public function PreUnexpected(WoodyContext $ctx): void {}
}
