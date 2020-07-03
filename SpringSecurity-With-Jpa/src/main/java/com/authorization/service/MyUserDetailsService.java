package com.authorization.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.authorization.models.MyUserDetails;
import com.authorization.models.Users;
import com.authorization.repository.UserRepository;
@Service
public class MyUserDetailsService implements UserDetailsService{
	@Autowired
	UserRepository userRepository;

	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		
		Users user= userRepository.findByUserName(userName);
		if(user==null) {
			throw new UsernameNotFoundException("UserName is not found"+userName);
		}
		return new MyUserDetails(user);
	}

}
