# Woody SDK utility registration
require_relative '../core/utility_type'
require_relative 'clean'
require_relative 'done'
require_relative 'make_error'
require_relative 'feature_add'
require_relative 'feature_hook'
require_relative 'feature_init'
require_relative 'fetcher'
require_relative 'make_fetch_def'
require_relative 'make_context'
require_relative 'make_options'
require_relative 'make_request'
require_relative 'make_response'
require_relative 'make_result'
require_relative 'make_point'
require_relative 'make_spec'
require_relative 'make_url'
require_relative 'param'
require_relative 'prepare_auth'
require_relative 'prepare_body'
require_relative 'prepare_headers'
require_relative 'prepare_method'
require_relative 'prepare_params'
require_relative 'prepare_path'
require_relative 'prepare_query'
require_relative 'result_basic'
require_relative 'result_body'
require_relative 'result_headers'
require_relative 'transform_request'
require_relative 'transform_response'

WoodyUtility.registrar = ->(u) {
  u.clean = WoodyUtilities::Clean
  u.done = WoodyUtilities::Done
  u.make_error = WoodyUtilities::MakeError
  u.feature_add = WoodyUtilities::FeatureAdd
  u.feature_hook = WoodyUtilities::FeatureHook
  u.feature_init = WoodyUtilities::FeatureInit
  u.fetcher = WoodyUtilities::Fetcher
  u.make_fetch_def = WoodyUtilities::MakeFetchDef
  u.make_context = WoodyUtilities::MakeContext
  u.make_options = WoodyUtilities::MakeOptions
  u.make_request = WoodyUtilities::MakeRequest
  u.make_response = WoodyUtilities::MakeResponse
  u.make_result = WoodyUtilities::MakeResult
  u.make_point = WoodyUtilities::MakePoint
  u.make_spec = WoodyUtilities::MakeSpec
  u.make_url = WoodyUtilities::MakeUrl
  u.param = WoodyUtilities::Param
  u.prepare_auth = WoodyUtilities::PrepareAuth
  u.prepare_body = WoodyUtilities::PrepareBody
  u.prepare_headers = WoodyUtilities::PrepareHeaders
  u.prepare_method = WoodyUtilities::PrepareMethod
  u.prepare_params = WoodyUtilities::PrepareParams
  u.prepare_path = WoodyUtilities::PreparePath
  u.prepare_query = WoodyUtilities::PrepareQuery
  u.result_basic = WoodyUtilities::ResultBasic
  u.result_body = WoodyUtilities::ResultBody
  u.result_headers = WoodyUtilities::ResultHeaders
  u.transform_request = WoodyUtilities::TransformRequest
  u.transform_response = WoodyUtilities::TransformResponse
}
