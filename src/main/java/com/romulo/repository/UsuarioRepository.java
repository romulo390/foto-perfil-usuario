package com.romulo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.romulo.model.Usuario;


public interface UsuarioRepository extends JpaRepository<Usuario, Long>{
	

	public Usuario findByEmailAndSenha(String email, String senha);
	
	@Query(value="SELECT e FROM Usuario e WHERE e.email = :email and e.senha like :senha")
	public Usuario login(@Param("email") String email, @Param("senha") String senha);
}
