package com.example.algamoney.api.security.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class GeradorSenha {

	public static void main(String[] args) {
		
		BCryptPasswordEncoder encolder = new BCryptPasswordEncoder();
		System.out.println(encolder.encode("admin"));
		
		// usuario admin senha admin
		// usuario maria senha maria
	}
}
