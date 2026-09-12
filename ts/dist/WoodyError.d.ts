import { Context } from './Context';
declare class WoodyError extends Error {
    isWoodyError: boolean;
    sdk: string;
    code: string;
    ctx: Context;
    status: number;
    get notFound(): boolean;
    constructor(code: string, msg: string, ctx: Context);
}
export { WoodyError };
