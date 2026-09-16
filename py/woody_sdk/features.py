# Woody SDK feature factory

from woody_sdk.feature.base_feature import WoodyBaseFeature
from woody_sdk.feature.ratelimit_feature import WoodyRatelimitFeature
from woody_sdk.feature.retry_feature import WoodyRetryFeature
from woody_sdk.feature.test_feature import WoodyTestFeature
from woody_sdk.feature.timeout_feature import WoodyTimeoutFeature


_FEATURES = {
    "base": lambda: WoodyBaseFeature(),
    "ratelimit": lambda: WoodyRatelimitFeature(),
    "retry": lambda: WoodyRetryFeature(),
    "test": lambda: WoodyTestFeature(),
    "timeout": lambda: WoodyTimeoutFeature(),
}


def _make_feature(name):
    factory = _FEATURES.get(name)
    if factory is not None:
        return factory()
    return _FEATURES["base"]()


# True when this SDK was generated with the named feature class - the
# constructor's tolerance for extend-carried features reads this (an
# active name with no generated class must not become a BaseFeature
# stray when an extend instance carries it).
def _has_feature(name):
    return name in _FEATURES
