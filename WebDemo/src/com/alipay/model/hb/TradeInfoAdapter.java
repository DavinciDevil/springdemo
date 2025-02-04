package com.alipay.model.hb;

import com.alipay.utils.Utils;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import org.apache.commons.lang.StringUtils;

import java.lang.reflect.Type;
import java.util.List;

/**
 * Created by liuyangkly on 15/9/28.
 */
public class TradeInfoAdapter implements JsonSerializer<List<TradeInfo>> {
    @Override
    public JsonElement serialize(List<TradeInfo> tradeInfoList, Type type, JsonSerializationContext jsonSerializationContext) {
        if (Utils.isListEmpty(tradeInfoList)) {
            return null;
        }

        TradeInfo tradeInfo = tradeInfoList.get(0);
        if (tradeInfo instanceof PosTradeInfo) {
        	Object [] objects = tradeInfoList.toArray();//自己添加的
            return new JsonPrimitive(StringUtils.join(objects, ""));
        }

        return jsonSerializationContext.serialize(tradeInfoList);
    }
}
