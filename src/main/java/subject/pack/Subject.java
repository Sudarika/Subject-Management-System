package subject.pack;

/*
This is a model class represents a Subject entity
*/
public class Subject {
	protected int id;
	protected String name;
	protected String teacherid;
	protected String courseid;
	protected int term;
	protected String content;
	protected int uid;
	
	public Subject() {}

	public Subject(int id, String name, String teacherid, String courseid, int term, String content) {
		super();
		this.id = id;
		this.name = name;
		this.teacherid = teacherid;
		this.courseid = courseid;
		this.term = term;
		this.content = content;
		
	}

	public Subject(String name, String teacherid, String courseid, int term, String content,int uid) {
		super();
		this.name = name;
		this.teacherid = teacherid;
		this.courseid = courseid;
		this.term = term;
		this.content = content;
		this.uid = uid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTeacherid() {
		return teacherid;
	}

	public void setTeacherid(String teacherid) {
		this.teacherid = teacherid;
	}

	public String getCourseid() {
		return courseid;
	}

	public void setCourseid(String courseid) {
		this.courseid = courseid;
	}

	public int getTerm() {
		return term;
	}

	public void setTerm(int term) {
		this.term = term;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	
}