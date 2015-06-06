package kr.or.newbie.tutorial.devprogram.domain;

public class Devprogram {

	private String program_name;
	private String install_content;
	private int install_date;
	private String com_demand;
	
	
	public Devprogram() {
		this(null,null,0,null);
	}


	public Devprogram(String program_name, String install_content,
			int install_date, String com_demand) {
		super();
		this.program_name = program_name;
		this.install_content = install_content;
		this.install_date = install_date;
		this.com_demand = com_demand;
	}


	@Override
	public String toString() {
		return "devprogram [program_name=" + program_name
				+ ", install_content=" + install_content + ", install_date="
				+ install_date + ", com_demand=" + com_demand + "]";
	}


	public String getProgram_name() {
		return program_name;
	}


	public void setProgram_name(String program_name) {
		this.program_name = program_name;
	}


	public String getInstall_content() {
		return install_content;
	}


	public void setInstall_content(String install_content) {
		this.install_content = install_content;
	}


	public int getInstall_date() {
		return install_date;
	}


	public void setInstall_date(int install_date) {
		this.install_date = install_date;
	}


	public String getCom_demand() {
		return com_demand;
	}

	public void setCom_demand(String com_demand) {
		this.com_demand = com_demand;
	}
	
	
}
