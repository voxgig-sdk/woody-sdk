// Typed models for the Woody SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.

export interface Api {
  id?: string
  permalink?: string
  url?: string
}

export interface ApiLoadMatch {
  id: string
}

export interface Random {
  id?: string
  permalink?: string
  url?: string
}

export type RandomLoadMatch = Partial<Random>

