# Woody SDK utility: make_context

from core.context import WoodyContext


def make_context_util(ctxmap, basectx):
    return WoodyContext(ctxmap, basectx)
