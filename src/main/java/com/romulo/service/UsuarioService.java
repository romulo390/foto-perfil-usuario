package com.romulo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.romulo.model.Usuario;
import com.romulo.repository.UsuarioRepository;

@Service
public class UsuarioService {

	@Autowired
	private UsuarioRepository usuarioRepos;

	
	public Usuario loginUsuario(String email, String senha) {

		//return usuarioRepos.findByEmailAndSenha(email, senha);
		return usuarioRepos.login(email, senha);

	}
}
