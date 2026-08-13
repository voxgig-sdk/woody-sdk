# Woody SDK utility: make_context

from woody_sdk.core.context import WoodyContext


def make_context_util(ctxmap, basectx):
    return WoodyContext(ctxmap, basectx)
