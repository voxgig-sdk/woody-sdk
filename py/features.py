# Woody SDK feature factory

from feature.base_feature import WoodyBaseFeature
from feature.test_feature import WoodyTestFeature


def _make_feature(name):
    features = {
        "base": lambda: WoodyBaseFeature(),
        "test": lambda: WoodyTestFeature(),
    }
    factory = features.get(name)
    if factory is not None:
        return factory()
    return features["base"]()
