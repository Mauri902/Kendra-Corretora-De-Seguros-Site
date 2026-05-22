package controller;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import model.DAO;
import model.JavaBeans;

@WebServlet({"/main", "/insert", "/select", "/login", "/delete", "/update", "/view", "/logout"})
@MultipartConfig
public class Controller extends HttpServlet {

	private static final long serialVersionUID = 1L;

	DAO dao = new DAO();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		
		if(!action.equals("/login")) {

		    HttpSession session = request.getSession(false);

		    if(session == null || session.getAttribute("usuario") == null){
		        response.sendRedirect("login.html");
		        return;
		    }
		}

		if(action.equals("/main")){
			contatos(request,response);

		} else if(action.equals("/insert")){
			novoContatos(request,response);

		} else if(action.equals("/select")){
			selecionarContato(request,response);

		} else if(action.equals("/delete")){
			excluirContato(request,response);
		} else if(action.equals("/view")){
			view(request,response);
		} else if(action.equals("/logout")){
			logout(request,response);
		}
		
		else {
			response.sendRedirect("index.html");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		if(action.equals("/login")){
		    validarLogin(request, response);
		    return;
		}

		HttpSession session = request.getSession(false);

		if(session == null || session.getAttribute("usuario") == null){
		    response.sendRedirect("login.html");
		    return;
		}

		if(action.equals("/insert")){
		    novoContatos(request,response);

		} else if(action.equals("/update")){
		    atualizarContato(request,response);
		}
	}

	protected void contatos(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ArrayList<JavaBeans> lista = dao.listarContatos();

		request.setAttribute("lista", lista);

		RequestDispatcher rd = request.getRequestDispatcher("dados.jsp");
		rd.forward(request, response);
	}

	protected void novoContatos(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

		JavaBeans contato = new JavaBeans();

		contato.setNome(request.getParameter("nome"));
		contato.setCpf(request.getParameter("cpf"));
		contato.setEmpresa(request.getParameter("empresa"));
		contato.setCnpj(request.getParameter("cnpj"));
		contato.setTelefone(request.getParameter("telefone"));
		contato.setEmail(request.getParameter("email"));
		contato.setNascimento(request.getParameter("nascimento"));
		contato.setSexo(request.getParameter("sexo"));
		contato.setEstado(request.getParameter("estado"));
		contato.setSeguros(request.getParameter("seguros"));
		contato.setIndicou(request.getParameter("indicou"));
		contato.setObservacao(request.getParameter("observacao"));
		

		try {
			Part filePart = request.getPart("documento");
			if(filePart != null && filePart.getSize() > 0){
				contato.setDocumento(filePart.getInputStream().readAllBytes());
			}
		} catch (Exception e) {
			System.out.println(e);
		}

		boolean status = dao.inserirContato(contato);

		if(status){
			response.sendRedirect("main");
		} else {
			response.sendRedirect("erro.html");
		}
	}

	protected void validarLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		JavaBeans usuario = new JavaBeans();

		usuario.setNome(request.getParameter("nome"));
		usuario.setSenha(request.getParameter("senha"));

		boolean acesso = dao.login(usuario);

		if(acesso){
	        HttpSession session = request.getSession();
	        session.setAttribute("usuario", usuario.getNome());
	        
			response.sendRedirect("central.jsp");
		} else {
			response.sendRedirect("errologin.html");
		}
	}

	protected void excluirContato(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		JavaBeans contato = new JavaBeans();

		contato.setId(request.getParameter("id"));

		dao.deletarContato(contato);

		response.sendRedirect("main");
	}

	protected void selecionarContato(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		JavaBeans contato = new JavaBeans();

		contato.setId(request.getParameter("id"));

		dao.selecionarContato(contato);

		request.setAttribute("contato", contato);

		RequestDispatcher rd = request.getRequestDispatcher("editar.jsp");
		rd.forward(request, response);
	}

	protected void atualizarContato(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	    JavaBeans contato = new JavaBeans();

	    contato.setId(request.getParameter("id"));
	    contato.setNome(request.getParameter("nome"));
	    contato.setCpf(request.getParameter("cpf"));
	    contato.setEmpresa(request.getParameter("empresa"));
	    contato.setCnpj(request.getParameter("cnpj"));
	    contato.setTelefone(request.getParameter("telefone"));
	    contato.setEmail(request.getParameter("email"));
	    contato.setNascimento(request.getParameter("nascimento"));
	    contato.setSexo(request.getParameter("sexo"));
	    contato.setEstado(request.getParameter("estado"));
	    contato.setSeguros(request.getParameter("seguros"));
	    contato.setIndicou(request.getParameter("indicou"));
	    contato.setObservacao(request.getParameter("observacao"));

	    try {
	    	Part filePart = request.getPart("documento");

	    	if (filePart != null && filePart.getSize() > 0) {
	    	    contato.setDocumento(filePart.getInputStream().readAllBytes());
	    	} else {
	    		
	    	    JavaBeans antigo = new JavaBeans();
	    	    antigo.setId(contato.getId());

	    	    dao.selecionarContato(antigo);
	    	    contato.setDocumento(antigo.getDocumento());
	    	}

	    } catch (Exception e) {
	        System.out.println(e);
	    }

	    dao.atualizarContato(contato);

	    response.sendRedirect("main");
	}
	
	protected void view(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	    String id = request.getParameter("id");

	    JavaBeans contato = new JavaBeans();
	    contato.setId(id);

	    dao.selecionarContato(contato);

	    byte[] arquivo = contato.getDocumento();

	    if (arquivo != null) {
	    	
	    	response.setContentType("application/pdf");
	    	response.setHeader("Content-Disposition", "inline");

	        response.getOutputStream().write(arquivo);
	        response.getOutputStream().flush();
	    } else {
	        response.sendRedirect("erro.html");
	    }
	}
	
	protected void logout(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	    HttpSession session = request.getSession(false);

	    if(session != null){
	        session.invalidate();
	    }

	    response.sendRedirect("login.html");
	}
}