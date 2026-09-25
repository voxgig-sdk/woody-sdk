
import { test, describe } from 'node:test'
import { equal } from 'node:assert'


import { WoodySDK } from '..'


describe('exists', async () => {

  test('test-mode', () => {
    const testsdk = WoodySDK.test()
    equal(testsdk instanceof WoodySDK, true,
      'WoodySDK.test() must return a client synchronously')
  })

})
