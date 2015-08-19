import java.util.ArrayList;

import cn.wegoteam.shop.cache.StaticDataCache;
import cn.wegoteam.shop.po.Staticdata;

public class Static {
	public static Staticdata getStatic(String code){
		return StaticDataCache.getStaticdata(code);
	}
	public static ArrayList<Staticdata> getStaticdatas(String code,String type){
		return StaticDataCache.getStaticdatas(code,type);
	}
}
