package com.distribuida.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Component 
@Entity 
@Table (name= "contratacion_detalle")
public class ContratacionDetalle {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id_contratacion_detalle")
	private int idContratacionDetalle;
	@Column(name="id_contratacion")
	private int idContratacion;
	@Column(name="id_empleado")
	private int idEmpleado;
	@Column(name="id_tipo_contrato")
	private int idTipoContrato;
	@Column(name="id_sucursal")
	private int idSucursal;
	
	@Column(name="academia_titulo")
	private String academiaTitulo;
	@Column(name="academia_pais")
	private String academiaPais;
	@Column(name="academia_nivel")
	private String academiaNivel;
	@Column(name="academia_area")
	private String academiaArea;
	@Column(name="academia_institucion")
	private String academiaInstitucion;
	@Column(name="academia_nivel_estado")
	private String academiaNivelEstado;
	@Column(name="academia_certificado")
	private String academiaCertificado;
	@Column(name="academia_nivel_idioma_ingles")
	private String academiaNivelIdiomaIngles;
	@Column(name="academia_nivel_idioma_otro")
	private String academiaNivelIdiomaOtro;
	@Column(name="explab_nivel")
	private String explabNivel;
	
	@Column(name="explab_tiempo_anios")
	private int explabTiempoAnios;
	@Column(name="sueldo_estimado")
	private Double sueldoEstimado;
	@Column(name="sueldo_aprobado")
	private Double sueldoAprobado;
	@Column(name="dias_vacaciones")
	private int diasVacaciones;
	@Column(name="aprobado_contratacion")
	private String aprobadoContratacion;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name="fecha_inicio_contratacion")
	private java.sql.Date fechaInicioContratacion;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name="fecha_fin_contratacion")
	private java.sql.Date fechaFinContratacion;
	@Column(name="hoja_vida")
	private String hojaVida;
	@Column(name="foto")
	private String foto;

	public ContratacionDetalle() {}
	
	public ContratacionDetalle(int idContratacionDetalle, int idContratacion, int idEmpleado, int idTipoContrato, int idSucursal, String academiaTitulo, String academiaPais
			, String academiaNivel, String academiaArea, String academiaInstitucion, String academiaNivelEstado, String academiaCertificado, String academiaNivelIdiomaIngles
			, String academiaNivelIdiomaOtro, String explabNivel, int explabTiempoAnios, double sueldoEstimado, double sueldoAprobado, int diasVacaciones, String aprobadoContratacion
			, java.sql.Date  fechaInicioContratacion, java.sql.Date  fechaFinContratacion, String hojaVida,String foto ) {
		
		this.idContratacionDetalle = idContratacionDetalle;
		this.idContratacion = idContratacion;
		this.idEmpleado = idEmpleado;
		this.idTipoContrato = idTipoContrato;		
		this.idSucursal = idSucursal;
		this.academiaTitulo = academiaTitulo;
		this.academiaPais = academiaPais;
		this.academiaNivel = academiaNivel;
		this.academiaArea = academiaArea;
		this.academiaInstitucion = academiaInstitucion;
		this.academiaNivelEstado = academiaNivelEstado;		
		this.academiaCertificado = academiaCertificado;
		this.academiaNivelIdiomaIngles = academiaNivelIdiomaIngles;
		this.academiaNivelIdiomaOtro = academiaNivelIdiomaOtro;
		
		
		this.explabNivel = explabNivel;
		this.explabTiempoAnios = explabTiempoAnios;
		this.sueldoEstimado = sueldoEstimado;
		this.sueldoAprobado = sueldoAprobado;
		this.diasVacaciones = diasVacaciones;
		this.aprobadoContratacion = aprobadoContratacion;
		
		this.fechaInicioContratacion = fechaInicioContratacion;
		this.fechaFinContratacion = fechaFinContratacion;		
		this.hojaVida = hojaVida;
		this.foto = foto;
		
	}

	public int getIdContratacionDetalle() {
		return idContratacionDetalle;
	}

	public void setIdContratacionDetalle(int idContratacionDetalle) {
		this.idContratacionDetalle = idContratacionDetalle;
	}

	public int getIdContratacion() {
		return idContratacion;
	}

	public void setIdContratacion(int idContratacion) {
		this.idContratacion = idContratacion;
	}

	public int getIdEmpleado() {
		return idEmpleado;
	}

	public void setIdEmpleado(int idEmpleado) {
		this.idEmpleado = idEmpleado;
	}

	public int getIdTipoContrato() {
		return idTipoContrato;
	}

	public void setIdTipoContrato(int idTipoContrato) {
		this.idTipoContrato = idTipoContrato;
	}

	public int getIdSucursal() {
		return idSucursal;
	}

	public void setIdSucursal(int idSucursal) {
		this.idSucursal = idSucursal;
	}

	public String getAcademiaTitulo() {
		return academiaTitulo;
	}

	public void setAcademiaTitulo(String academiaTitulo) {
		this.academiaTitulo = academiaTitulo;
	}

	public String getAcademiaPais() {
		return academiaPais;
	}

	public void setAcademiaPais(String academiaPais) {
		this.academiaPais = academiaPais;
	}

	public String getAcademiaNivel() {
		return academiaNivel;
	}

	public void setAcademiaNivel(String academiaNivel) {
		this.academiaNivel = academiaNivel;
	}

	public String getAcademiaArea() {
		return academiaArea;
	}

	public void setAcademiaArea(String academiaArea) {
		this.academiaArea = academiaArea;
	}

	public String getAcademiaInstitucion() {
		return academiaInstitucion;
	}

	public void setAcademiaInstitucion(String academiaInstitucion) {
		this.academiaInstitucion = academiaInstitucion;
	}

	public String getAcademiaNivelEstado() {
		return academiaNivelEstado;
	}

	public void setAcademiaNivelEstado(String academiaNivelEstado) {
		this.academiaNivelEstado = academiaNivelEstado;
	}

	public String getAcademiaCertificado() {
		return academiaCertificado;
	}

	public void setAcademiaCertificado(String academiaCertificado) {
		this.academiaCertificado = academiaCertificado;
	}

	public String getAcademiaNivelIdiomaIngles() {
		return academiaNivelIdiomaIngles;
	}

	public void setAcademiaNivelIdiomaIngles(String academiaNivelIdiomaIngles) {
		this.academiaNivelIdiomaIngles = academiaNivelIdiomaIngles;
	}

	public String getAcademiaNivelIdiomaOtro() {
		return academiaNivelIdiomaOtro;
	}

	public void setAcademiaNivelIdiomaOtro(String academiaNivelIdiomaOtro) {
		this.academiaNivelIdiomaOtro = academiaNivelIdiomaOtro;
	}

	public String getExplabNivel() {
		return explabNivel;
	}

	public void setExplabNivel(String explabNivel) {
		this.explabNivel = explabNivel;
	}

	public int getExplabTiempoAnios() {
		return explabTiempoAnios;
	}

	public void setExplabTiempoAnios(int explabTiempoAnios) {
		this.explabTiempoAnios = explabTiempoAnios;
	}

	public Double getSueldoEstimado() {
		return sueldoEstimado;
	}

	public void setSueldoEstimado(double sueldoEstimado) {
		this.sueldoEstimado = sueldoEstimado;
	}

	public Double getSueldoAprobado() {
		return sueldoAprobado;
	}

	public void setSueldoAprobado(double sueldoAprobado) {
		this.sueldoAprobado = sueldoAprobado;
	}

	public int getDiasVacaciones() {
		return diasVacaciones;
	}

	public void setDiasVacaciones(int diasVacaciones) {
		this.diasVacaciones = diasVacaciones;
	}

	public String getAprobadoContratacion() {
		return aprobadoContratacion;
	}

	public void setAprobadoContratacion(String aprobadoContratacion) {
		this.aprobadoContratacion = aprobadoContratacion;
	}

	public Date getFechaInicioContratacion() {
		return fechaInicioContratacion;
	}

	public void setFechaInicioContratacion(java.sql.Date  fechaInicioContratacion) {
		this.fechaInicioContratacion = fechaInicioContratacion;
	}

	public Date getFechaFinContratacion() {
		return fechaFinContratacion;
	}

	public void setFechaFinContratacion(java.sql.Date  fechaFinContratacion) {
		this.fechaFinContratacion = fechaFinContratacion;
	}

	public String getHojaVida() {
		return hojaVida;
	}

	public void setHojaVida(String hojaVida) {
		this.hojaVida = hojaVida;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	@Override
	public String toString() {
		return "ContratacionDetalle [idContratacionDetalle=" + idContratacionDetalle + ", idContratacion="
				+ idContratacion + ", idEmpleado=" + idEmpleado + ", idTipoContrato=" + idTipoContrato + ", idSucursal="
				+ idSucursal + ", academiaTitulo=" + academiaTitulo + ", academiaPais=" + academiaPais
				+ ", academiaNivel=" + academiaNivel + ", academiaArea=" + academiaArea + ", academiaInstitucion="
				+ academiaInstitucion + ", academiaNivelEstado=" + academiaNivelEstado + ", academiaCertificado="
				+ academiaCertificado + ", academiaNivelIdiomaIngles=" + academiaNivelIdiomaIngles
				+ ", academiaNivelIdiomaOtro=" + academiaNivelIdiomaOtro + ", explabNivel=" + explabNivel
				+ ", explabTiempoAnios=" + explabTiempoAnios + ", sueldoEstimado=" + sueldoEstimado
				+ ", sueldoAprobado=" + sueldoAprobado + ", diasVacaciones=" + diasVacaciones
				+ ", aprobadoContratacion=" + aprobadoContratacion + ", fechaInicioContratacion="
				+ fechaInicioContratacion + ", fechaFinContratacion=" + fechaFinContratacion + ", hojaVida=" + hojaVida
				+ ", foto=" + foto + "]";
	}

	
	
	

	

	
}
