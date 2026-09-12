import { inspect } from 'node:util';
import { WoodySDK } from './WoodySDK';
import { Utility } from './utility/Utility';
import type { Context } from './types';
declare class WoodyEntityBase<D = any> {
    name: string;
    name_: string;
    Name: string;
    _client: WoodySDK;
    _utility: Utility;
    _entopts: any;
    _data: Partial<D>;
    _match: Partial<D>;
    _entctx: Context;
    _deleted: boolean;
    constructor(client: WoodySDK, entopts: any);
    markDeleted(this: any): void;
    deleted(this: any): boolean;
    entopts(): any;
    client(): WoodySDK;
    data(this: any, data?: Partial<D>): D;
    match(this: any, match?: Partial<D>): Partial<D>;
    stream(this: any, action: string, args?: any, callopts?: any): AsyncGenerator<any>;
    toJSON(): any;
    toString(): string;
    [inspect.custom](): string;
    _unexpected(this: any, ctx: Context, err: any): any;
}
export { WoodyEntityBase };
