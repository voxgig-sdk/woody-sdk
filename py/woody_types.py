# Typed models for the Woody SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Field/param types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Do not edit by hand.

from __future__ import annotations

from dataclasses import dataclass
from typing import Optional, Any


@dataclass
class Api:
    id: Optional[str] = None
    permalink: Optional[str] = None
    url: Optional[str] = None


@dataclass
class ApiLoadMatch:
    id: str


@dataclass
class Random:
    id: Optional[str] = None
    permalink: Optional[str] = None
    url: Optional[str] = None


@dataclass
class RandomLoadMatch:
    id: Optional[str] = None
    permalink: Optional[str] = None
    url: Optional[str] = None

