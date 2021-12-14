package com.devpro.backend16.services;

import com.devpro.backend16.entities.Roles;

public class RoleService extends BaseService<Roles> {

	@Override
	protected Class<Roles> clazz() {
		return Roles.class;
	}

}
