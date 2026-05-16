package core

type WoodyError struct {
	IsWoodyError bool
	Sdk              string
	Code             string
	Msg              string
	Ctx              *Context
	Result           any
	Spec             any
}

func NewWoodyError(code string, msg string, ctx *Context) *WoodyError {
	return &WoodyError{
		IsWoodyError: true,
		Sdk:              "Woody",
		Code:             code,
		Msg:              msg,
		Ctx:              ctx,
	}
}

func (e *WoodyError) Error() string {
	return e.Msg
}
