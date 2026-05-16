package core

var UtilityRegistrar func(u *Utility)

var NewBaseFeatureFunc func() Feature

var NewTestFeatureFunc func() Feature

var NewApiEntityFunc func(client *WoodySDK, entopts map[string]any) WoodyEntity

var NewRandomEntityFunc func(client *WoodySDK, entopts map[string]any) WoodyEntity

