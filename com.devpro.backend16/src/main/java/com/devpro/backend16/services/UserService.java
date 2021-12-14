package com.devpro.backend16.services;

import org.springframework.stereotype.Service;

import com.devpro.backend16.entities.Users;


@Service
public class UserService extends BaseService<Users> {
	
	@Override
	protected Class<Users> clazz() {
		return Users.class;
	}

	
}
