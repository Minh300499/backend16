package com.devpro.backend16.services;

import org.springframework.stereotype.Service;

import com.devpro.backend16.entities.Contact;

@Service
public class ContactService extends BaseService<Contact> {

	@Override
	protected Class<Contact> clazz() {
		return Contact.class;
	}


}
