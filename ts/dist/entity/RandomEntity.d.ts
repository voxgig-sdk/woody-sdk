import { WoodyEntityBase } from '../WoodyEntityBase';
import type { WoodySDK } from '../WoodySDK';
import type { Control } from '../types';
import type { Random, RandomLoadMatch } from '../WoodyTypes';
declare class RandomEntity extends WoodyEntityBase<Random> {
    constructor(client: WoodySDK, entopts: any);
    make(this: RandomEntity): RandomEntity;
    load(this: any, reqmatch?: RandomLoadMatch, ctrl?: Control): Promise<RandomEntity>;
}
export { RandomEntity };
