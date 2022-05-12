package com.romulo.controller;


import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.romulo.model.Usuario;
import com.romulo.service.UsuarioService;


@RestController
public class LoginController {
	
	@Autowired
	public UsuarioService userService;

	@GetMapping("login")
	public ModelAndView index(){	
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}
	
	@GetMapping("index")
	public ModelAndView logado(){	
		ModelAndView mv = new ModelAndView("footer");
		return mv;
	}
	
	@PostMapping("/loga")
	public ModelAndView login(Usuario usuario, HttpSession session){

		Usuario usuarioAcessso = userService.loginUsuario(usuario.getEmail(), usuario.getSenha());
		
		ModelAndView mv = new ModelAndView();
		
		if (usuarioAcessso == null) {
			return mv.addObject("error", "Usuario e/ou senha incorretos");
		}
				
		byte[] codImagem = Base64.encodeBase64(usuarioAcessso.getImagem()); 
		
		String encodedString = new String(codImagem);
	
		session.setAttribute("usuarioNome", usuarioAcessso.getNome());
		session.setAttribute("fotoUsuario", encodedString);
	
	
		return new ModelAndView("redirect:/index");
	
	}	
	@GetMapping("/logout")
	private ModelAndView logout(){
		
		return new ModelAndView("redirect:/login");
	}
}
