/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.cientifica.model.dao;

import edu.cientifica.model.Indumentaria;
import edu.cientifica.model.Mat_Prima;
import java.util.List;

/**
 *
 * @author julio
 */
public interface Mat_PrimaDAO {
    public List<Mat_Prima> findAll();
    public Mat_Prima findByCodigo (String codigo);
    public int insert (Mat_Prima mate_prima);
    public int update (Mat_Prima mate_prima);
    public int delete (String codigo);
}
