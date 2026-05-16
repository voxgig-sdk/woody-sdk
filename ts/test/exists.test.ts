
import { test, describe } from 'node:test'
import { equal } from 'node:assert'


import { WoodySDK } from '..'


describe('exists', async () => {

  test('test-mode', async () => {
    const testsdk = await WoodySDK.test()
    equal(null !== testsdk, true)
  })

})
