  db.connect();
   String sql = "select * from where username=? and password=?";
      pst = conn.prepareStatement(sql);
      pst.setString(1, view.getUsername());
      pst.setString(2, view.getPassword());
      rs = pst.executeQuery();

      if (rs.next()) {
          if(view.getUsername.equals("Admin"))
	  {
	     JOptionpane.showMessageDialogue(null, "Welcome admin");
	  }else   
	  {
	     JOptionPane.showMessageDialogue(null, "Welcome user");
	  }
      } else {
             JOptionPane.showMessageDialogue(null, "Invalid Username or Password", "Acess Denied", JOptionPane.EROR_MESSAGE);
	  }
     } catch (Exception e) {
         JOptionPane.showMessageDialogue(null, e);
     }	 
