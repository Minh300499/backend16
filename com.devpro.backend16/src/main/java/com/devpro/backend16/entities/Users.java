package com.devpro.backend16.entities;

import java.util.HashSet;
import java.util.Set;

import javax.management.relation.Role;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.Table;


@Entity
@Table(name="tbl_users")
public class Users extends BaseEntity{
     @Column(name="username", length=45,nullable=false)
     private String username;
     
     @Column(name="password", length=100, nullable=false)
     private String password;
     
     @Column(name="email", length=45, nullable=false)
     private String email;
    
     
    @ManyToMany(cascade= CascadeType.ALL, fetch= FetchType.EAGER, mappedBy="users")
    private Set<Roles> roles= new HashSet<Roles>();
    
    public void addRoles(Roles role) {
    	role.getUsers().add(this);
    	roles.add(role);
    }
    
    public void deleteRole(Roles role) {
    	role.getUsers().remove(this);
    	roles.remove(role);
    }
    
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Set<Roles> getRoles() {
		return roles;
	}

	public void setRoles(Set<Roles> roles) {
		this.roles = roles;
	}

	
     
    // em đặt là roles e lại khai báo là role cả cái users cx thế
}
