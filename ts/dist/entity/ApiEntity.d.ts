import { WoodyEntityBase } from '../WoodyEntityBase';
import type { WoodySDK } from '../WoodySDK';
import type { Control } from '../types';
import type { Api, ApiLoadMatch } from '../WoodyTypes';
declare class ApiEntity extends WoodyEntityBase<Api> {
    constructor(client: WoodySDK, entopts: any);
    make(this: ApiEntity): ApiEntity;
    load(this: any, reqmatch?: ApiLoadMatch, ctrl?: Control): Promise<ApiEntity>;
}
export { ApiEntity };
