# frozen_string_literal: true

# Typed models for the Woody SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Member types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Ruby types are unenforced; these YARD
# annotations document the shapes. Do not edit by hand.

# Api entity data model.
#
# @!attribute [rw] id
#   @return [String, nil]
#
# @!attribute [rw] permalink
#   @return [String, nil]
#
# @!attribute [rw] url
#   @return [String, nil]
Api = Struct.new(
  :id,
  :permalink,
  :url,
  keyword_init: true
)

# Request payload for Api#load.
#
# @!attribute [rw] id
#   @return [String]
ApiLoadMatch = Struct.new(
  :id,
  keyword_init: true
)

# Random entity data model.
#
# @!attribute [rw] id
#   @return [String, nil]
#
# @!attribute [rw] permalink
#   @return [String, nil]
#
# @!attribute [rw] url
#   @return [String, nil]
Random = Struct.new(
  :id,
  :permalink,
  :url,
  keyword_init: true
)

# Request payload for Random#load.
#
# @!attribute [rw] id
#   @return [String]
#
# @!attribute [rw] permalink
#   @return [String, nil]
#
# @!attribute [rw] url
#   @return [String, nil]
RandomLoadMatch = Struct.new(
  :id,
  :permalink,
  :url,
  keyword_init: true
)

