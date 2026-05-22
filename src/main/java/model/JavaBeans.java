package model;

public class JavaBeans {

	private String id;
	private String cpf;
	private String nome;
	private String empresa;
	private String cnpj;
	private String telefone;
	private String email;
	private String nascimento;
	private String sexo;
	private String estado;
	private String seguros;
	private String indicou;
	private byte[] documento;
	private String observacao;
	private String data;
	private String nomeadmin;
	private String senha;

	public JavaBeans() {
		super();
	}

	public JavaBeans(String id, String cpf, String nome, String empresa, String cnpj, String telefone, String email,
			String nascimento, String sexo, String estado, String seguros, String indicou, byte[] documento,
			String observacao, String data) {

		this.id = id;
		this.cpf = cpf;
		this.nome = nome;
		this.empresa = empresa;
		this.cnpj = cnpj;
		this.telefone = telefone;
		this.email = email;
		this.nascimento = nascimento;
		this.sexo = sexo;
		this.estado = estado;
		this.seguros = seguros;
		this.indicou = indicou;
		this.documento = documento;
		this.observacao = observacao;
		this.data = data;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmpresa() {
		return empresa;
	}

	public void setEmpresa(String empresa) {
		this.empresa = empresa;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNascimento() {
		return nascimento;
	}

	public void setNascimento(String nascimento) {
		this.nascimento = nascimento;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getSeguros() {
		return seguros;
	}

	public void setSeguros(String seguros) {
		this.seguros = seguros;
	}

	public String getIndicou() {
		return indicou;
	}

	public void setIndicou(String indicou) {
		this.indicou = indicou;
	}

	public byte[] getDocumento() {
		return documento;
	}

	public void setDocumento(byte[] documento) {
		this.documento = documento;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getNomeadmin() {
		return nomeadmin;
	}

	public void setNomeadmin(String nomeadmin) {
		this.nomeadmin = nomeadmin;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
}