package kr.or.newbie.tutorial.devprogram.domain;

public class Devprogram {

	private String program_name;
	private String program_os;
	private String install_content;
	private String install_date;
	private String com_demand;
	
	public Devprogram() {
		this(null, null,null,null,null);
	}

	public Devprogram(String program_name, String program_os,
			String install_content, String install_date, String com_demand) {
		super();
		this.program_name = program_name;
		this.program_os = program_os;
		this.install_content = install_content;
		this.install_date = install_date;
		this.com_demand = com_demand;
	}

	public String getProgram_name() {
		return program_name;
	}

	public void setProgram_name(String program_name) {
		this.program_name = program_name;
	}

	public String getProgram_os() {
		return program_os;
	}

	public void setProgram_os(String program_os) {
		this.program_os = program_os;
	}

	public String getInstall_content() {
		return install_content;
	}

	public void setInstall_content(String install_content) {
		this.install_content = install_content;
	}

	public String getInstall_date() {
		return install_date;
	}

	public void setInstall_date(String install_date) {
		this.install_date = install_date;
	}

	public String getCom_demand() {
		return com_demand;
	}

	public void setCom_demand(String com_demand) {
		this.com_demand = com_demand;
	}

	@Override
	public String toString() {
		return "Devprogram [program_name=" + program_name + ", program_os="
				+ program_os + ", install_content=" + install_content
				+ ", install_date=" + install_date + ", com_demand="
				+ com_demand + "]";
	}
	
	
	
}
