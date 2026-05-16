
import { Context } from './Context'


class WoodyError extends Error {

  isWoodyError = true

  sdk = 'Woody'

  code: string
  ctx: Context

  constructor(code: string, msg: string, ctx: Context) {
    super(msg)
    this.code = code
    this.ctx = ctx
  }

}

export {
  WoodyError
}

