<html lang="en">
<head>
  <title>Forfot Password Mail</title>
</head>

<body bgcolor="gray">
<div style="background-color:#ffffff">
<div style="margin: 0 auto; padding: 30px 15px; width: 70%;">
    <h3>Saesha Flower</h3>
     
    Tank you for choosing Saesha Flower for you fioral needs.We greatly appreciate your bussinness.
    Your Default Passwored Given Blow.
    <?php //print_r($user_detail);?>

    <br>
    <br>
    
    <table class="table">
      <thead>
        <th>SL No </th>
        <th>User Name</th>
        <th>Email</th>
        <th>Password</th>
        
      </thead>
      <tbody>
       <tr id="tr">
                  <td>1</td>
                  <td><?php echo $user_detail['full_name'];?></td>
                  <td><?php echo $user_detail['email_id'];?></td>
                  <td><?php echo $user_detail['update_password'];?></td>
                  
            </tr>
     </tbody>
      

    </table>


</div>
</div>


</body>