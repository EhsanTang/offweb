package cn.wegoteam.shop.po;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 * Hotword entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "hotword", catalog = "offweb", uniqueConstraints = @UniqueConstraint(columnNames = "name"))
public class Hotword  extends BasePo implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -6007886292885210079L;
	private Integer id;
	private String name;
	private Integer searchTimes;
	private Integer flag;

	public Hotword() {}

	public Hotword(String name, int searchTimes, int flag) {
		this.name=name;
		this.searchTimes=searchTimes;
		this.flag=flag;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "name", unique = true, nullable = false, length = 40)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "searchTimes", nullable = false)
	public Integer getSearchTimes() {
		return this.searchTimes;
	}

	public void setSearchTimes(Integer searchTimes) {
		this.searchTimes = searchTimes;
	}

	@Column(name = "flag", nullable = false)
	public Integer getFlag() {
		return this.flag;
	}

	public void setFlag(Integer flag) {
		this.flag = flag;
	}

}