package mystyle.Art.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "art_style")
public class ArtModel {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="user_id")
	protected Long id;
	protected String name;
	protected String last;
	protected String email;
	protected String result;
	
	public ArtModel () {}

	public ArtModel(Long id, String name, String last, String email, String result) {
		super();
		this.id = id;
		this.name = name;
		this.last = last;
		this.email = email;
		this.result = result;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLast() {
		return last;
	}

	public void setLast(String last) {
		this.last = last;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	@Override
	public String toString() {
		return "ArtModel [id=" + id + ", name=" + name + ", last=" + last + ", email=" + email + ", result=" + result
				+ "]";
	}

	
}
