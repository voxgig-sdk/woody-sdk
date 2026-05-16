# ProjectName SDK exists test

import pytest
from woody_sdk import WoodySDK


class TestExists:

    def test_should_create_test_sdk(self):
        testsdk = WoodySDK.test(None, None)
        assert testsdk is not None
