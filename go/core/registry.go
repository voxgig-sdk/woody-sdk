package core

var UtilityRegistrar func(u *Utility)

var NewBaseFeatureFunc func() Feature

var NewRatelimitFeatureFunc func() Feature

var NewRetryFeatureFunc func() Feature

var NewTestFeatureFunc func() Feature

var NewTimeoutFeatureFunc func() Feature

var NewApiEntityFunc func(client *WoodySDK, entopts map[string]any) WoodyEntity

var NewRandomEntityFunc func(client *WoodySDK, entopts map[string]any) WoodyEntity

