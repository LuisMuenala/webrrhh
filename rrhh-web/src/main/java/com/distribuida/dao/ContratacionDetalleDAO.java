package com.distribuida.dao;

import java.util.List;

import com.distribuida.entities.ContratacionDetalle;

public interface ContratacionDetalleDAO {
	public List<ContratacionDetalle> findAll();
	public ContratacionDetalle findOne(int id);
	public void add(ContratacionDetalle contratacionDetalle);
	public void up(ContratacionDetalle contratacionDetalle);
	public void del(int id);
}
