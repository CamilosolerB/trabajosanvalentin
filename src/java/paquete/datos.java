package paquete;


import javax.swing.JOptionPane;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author SENA
 */
public class datos {
    
    public void comparacion(String tipo, String documento, String nombre, String apellido, String correo, int edad, String telefono){
    if(edad<18){
        JOptionPane.showMessageDialog(null, nombre+"\n"+apellido);
    }
    else{
        JOptionPane.showMessageDialog(null, tipo+"\n"+documento+"\n"+nombre+"\n"+apellido+"\n"+correo+"\n"+edad+"\n"+telefono);
    }
    
    }
    
    public void documentos(String tipo, String documento, String nombre, String apellido, String correo, int edad, String telefono){
        switch (tipo) {
            case "R.C":
                JOptionPane.showMessageDialog(null, nombre+"\n"+apellido+"\n"+edad);
                break;
            case "T.I":
                JOptionPane.showMessageDialog(null, tipo+"\n"+correo+"\n"+telefono);
                break;
            case "C.C":
                JOptionPane.showMessageDialog(null, tipo+"\n"+documento+"\n"+nombre+"\n"+apellido);
                break;
            default:
                JOptionPane.showMessageDialog(null, "Digite las iniciales de los documentos");
        }
    }
}
