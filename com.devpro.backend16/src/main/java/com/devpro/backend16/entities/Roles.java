package com.devpro.backend16.entities;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.JoinColumn;



@Entity
@Table(name="tbl_roles")
public class Roles extends BaseEntity {
	@Column (name="name", length=45,nullable = false)
	private String name;

	@Column(name="description", length=45, nullable = false)
	private String description;
    
	
	
	 
    @ManyToMany(cascade = CascadeType.ALL, fetch=FetchType.EAGER)
    @JoinTable(name="tbl_users_roles", joinColumns= @JoinColumn(name="role_id"), inverseJoinColumns = @JoinColumn(name="user_id"))
    private Set<Users> users = new HashSet<Users>();
    public void addUsers(Users user) {
    	this.users.add(user);
    	user.getRoles().add(this);
    }
    
    public void deleteUsers(Users user) {
    	this.users.remove(user);
    	user.getRoles().remove(this);
    }
    
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set<Users> getUsers() {
		return users;
	}

	public void setUsers(Set<Users> users) {
		this.users = users;
	}

	

	
	
	

}
