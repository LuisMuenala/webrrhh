package com.distribuida.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.entities.ContratacionDetalle;
import com.distribuida.dao.ContratacionDetalleDAO;

@Controller
@RequestMapping("/contratacionDetalle")//path principal
public class ContratacionDetalleController {
	@Autowired
	private ContratacionDetalleDAO contratacionDetalleDAO;
	
	
	@GetMapping ("/findAll")//path secundario
	public String findAll(Model model) {
		
		//try {
		List<ContratacionDetalle> contratacionDetalle = contratacionDetalleDAO.findAll();
		model.addAttribute("contratacionDetalle",contratacionDetalle);//key:clientes o keyclientes !! valor:clientes
			
			return"contratacionDetalle-listar";//nombre del formulario web a usar"clientes-listar.html","clientes-listar.jsp"
			
			
//		} catch (Exception e) {
	//		// TODO: handle exception
		//}
		
				
	}
	
	
	@GetMapping("/findOne") //Actualizar o eliminar
	public String findOne(@RequestParam("idContratacionDetalle") @Nullable Integer idContratacionDetalle
						,@RequestParam("opcion")@Nullable Integer opcion
						,Model model
			) {
		
		if(idContratacionDetalle !=null) {
			ContratacionDetalle contratacionDetalle =contratacionDetalleDAO.findOne(idContratacionDetalle);
			model.addAttribute("contratacionDetalle",contratacionDetalle);
		}
		if(opcion == 1) return "contratacionDetalle-add"; 
		else return "contratacionDetalle-del";
	}
	
	@PostMapping("/add")
	public String add(@RequestParam("idContratacionDetalle")@Nullable Integer idContratacionDetalle
					 ,@RequestParam("idContratacion")@Nullable Integer idContratacion
					 ,@RequestParam("idEmpleado")@Nullable Integer idEmpleado
					 ,@RequestParam("idTipoContrato")@Nullable Integer idTipoContrato
					 ,@RequestParam("idSucursal")@Nullable Integer idSucursal
					 ,@RequestParam("academiaTitulo")@Nullable String academiaTitulo
					 ,@RequestParam("academiaPais")@Nullable String academiaPais
					 ,@RequestParam("academiaNivel")@Nullable String academiaNivel
					 ,@RequestParam("academiaArea")@Nullable String academiaArea
					 ,@RequestParam("academiaInstitucion")@Nullable String academiaInstitucion
					 ,@RequestParam("academiaNivelEstado")@Nullable String academiaNivelEstado
					 ,@RequestParam("academiaCertificado")@Nullable String academiaCertificado
					 ,@RequestParam("academiaNivelIdiomaIngles")@Nullable String academiaNivelIdiomaIngles
					 ,@RequestParam("academiaNivelIdiomaOtro")@Nullable String academiaNivelIdiomaOtro
					 ,@RequestParam("explabNivel")@Nullable String explabNivel
					 ,@RequestParam("explabTiempoAnios")@Nullable Integer explabTiempoAnios
					 ,@RequestParam("sueldoEstimado")@Nullable Double sueldoEstimado
					 ,@RequestParam("sueldoAprobado")@Nullable Double sueldoAprobado
					 ,@RequestParam("diasVacaciones")@Nullable Integer diasVacaciones
					 ,@RequestParam("aprobadoContratacion")@Nullable String aprobadoContratacion
					 ,@RequestParam("fechaInicioContratacion")@Nullable java.sql.Date fechaInicioContratacion
					 ,@RequestParam("fechaFinContratacion")@Nullable java.sql.Date fechaFinContratacion
					 ,@RequestParam("hojaVida")@Nullable String hojaVida
					 ,@RequestParam("foto")@Nullable String foto
					 ,Model model
					) {
			if(idContratacionDetalle == null) {
				ContratacionDetalle contratacionDetalle =new ContratacionDetalle(0,idContratacion,idEmpleado,idTipoContrato,idSucursal,academiaTitulo,academiaPais,academiaNivel,academiaArea,academiaInstitucion
						,academiaNivelEstado,academiaCertificado,academiaNivelIdiomaIngles,academiaNivelIdiomaOtro,explabNivel,explabTiempoAnios,sueldoEstimado,sueldoAprobado,diasVacaciones,aprobadoContratacion
						,fechaInicioContratacion,fechaFinContratacion,hojaVida,foto);
				contratacionDetalleDAO.add(contratacionDetalle);
				
			}else {
				ContratacionDetalle contratacionDetalle =new ContratacionDetalle(idContratacionDetalle,idContratacion,idEmpleado,idTipoContrato,idSucursal,academiaTitulo,academiaPais,academiaNivel,academiaArea,academiaInstitucion
						,academiaNivelEstado,academiaCertificado,academiaNivelIdiomaIngles,academiaNivelIdiomaOtro,explabNivel,explabTiempoAnios,sueldoEstimado,sueldoAprobado,diasVacaciones,aprobadoContratacion
						,fechaInicioContratacion,fechaFinContratacion,hojaVida,foto);
				contratacionDetalleDAO.up(contratacionDetalle);
								
				
			}
		
			
				
		return "redirect:/contratacionDetalle/findAll";
	}
	
	@GetMapping("/del")
	public String del(@RequestParam("idContratacionDetalle")@Nullable Integer idContratacionDetalle) {
		contratacionDetalleDAO.del(idContratacionDetalle);
		
	return"redirect:/contratacionDetalle/findAll";	
	}

}
