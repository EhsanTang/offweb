package cn.wegoteam.shop.po;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import cn.crap.base.BasePo;

/**
 * Setting entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "setting")
public class Setting extends BasePo implements java.io.Serializable {

	private static final long serialVersionUID = 2706209907123981665L;
	private String key;// 设置的key值
	private String value;// 设置的value值
	private String remark;// 设置备注
	private String verify;

	@Column(name = "skey", length = 32)
	public String getKey() {
		return this.key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	@Column(name = "value", length = 500)
	public String getValue() {
		return this.value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	@Column(name = "remark", length = 100)
	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Column(name = "verify", length = 200)
	public String getVerify() {
		return this.verify;
	}

	public void setVerify(String verify) {
		this.verify = verify;
	}
}