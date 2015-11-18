package com.zxt;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 
 * @Title: JsonAction.java
 * @Package com.zxt.action
 * @Description:struts2 + ajax + json用例
 * @author zxt
 * @date 2011-12-6 上午10:38:51
 * @version V1.0
 */
public class JsonAction extends ActionSupport {

	/**
  *
  */
	private static final long serialVersionUID = 7443363719737618408L;
	/**
	 * 姓名
	 */
	private String name;
	/**
	 * 身高
	 */
	private String inch;
	/**
	 * ajax返回结果，也可是其他类型的，这里以String类型为例
	 */
	private String result;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if ("张三".equals(name)) {
			result = "身份验证通过,身高为" + inch;
		} else
			result = "不是张三！";
		return SUCCESS;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getInch() {
		return inch;
	}

	public void setInch(String inch) {
		this.inch = inch;
	}

	/**
	 * 
	 * @Title: getResult
	 * @Description:json调取结果
	 * @param @return
	 * @return String
	 * @throws
	 */
	public String getResult() {
		return result;
	}

}
