<?php include('dbcon.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - Home</title>

    <style>
        .head-div
        {
            width: 100%;
            background-color: Black;
            color: white;
            border: 1px solid white;
            margin-top:0px;
        }

        .head-div h1
        {
            margin-left: 200px;
        }

        html, body
        {
            margin: 0px;
            width: 100%;
            height: auto
        }
        
        .container
        {
            width: 70%;
            border: 1px solid black;
            border-radius: 5px;
            margin-left: 400px;
            text-align: center;
        }

        .container
        {
            font-weight: bold;
            width: 25%;
        }

        .no-result
        {
            width: 70%;
            border: 1px solid black;
            border-radius: 5px;
            margin-left: 400px;
            text-align: center;
        }

        .collapsible 
        {
            background-color: pink;
            color: white;
            cursor: pointer;
            padding: 18px;
            width: 78%;
            height: 30%;
            border: none;
            text-align: left;
            outline: none;
            font-size: 15px;
            border-radius: 10px;
            margin-bottom: 5px;
            margin-left: 320px;
        }

  .main_div
  {
    height: 100vh;
  }
  
  .active, .collapsible:hover {
    background-color: blueviolet;
  }
  
  .collapsible:after {
    content: '\002B';
    color: white;
    font-weight: bold;
    float: right;
    margin-left: 5px;
  }
  
  .active:after {
    content: "\2212";
  }
  
  .content {
    padding: 0 18px;
    max-height: 0px;
    overflow: hidden;
    transition:0.5s ease-out;
    background-color: black;
    margin-bottom: 5px;
    border-radius: 10px;
    width: 75.5%;
    height: auto;
    text-align: center;
    margin-left: 320px;
  }

  .content.scroll
  {
    overflow: hidden;
    height: auto;
  }

  .inside_content
  {
    background-color: black;
    color: white;
    margin: 0px;
    height: auto;
    align-content: center;
    border-radius: 5px;
    width: 100%;
    text-align: center;
  }

  /* .Select
  {
    background-color: black;
    color: white;
    border-radius: 25px;
    float: left;
    cursor: pointer;
    height: 70px;
    width: 100px;
    margin-top: 16px;
    margin-left: 75px;
    float: right;
    margin-right: 50px;
  }

  .Select:hover
  {
    transform: scale(1.1);
    transition: 0.2s;
  } */

  p
  {
    float: left;
    margin-top: 41px;
  }

  .Skip
  {
    border-radius: 25px;
  }

  th, td
  {
    text-align: center;
    color: white;
    border: 1px solid white;
    width: 60%;
  }

  .accept-order-button
  {
    border: 1px solid violet;
    border-radius: 5px;
    background-color: violet;
    color: white;
    font-weight: bold;
  }

  .accept-order-button:hover
    {
      background-color: purple;
      color: white;
      border: 1px solid purple;
      cursor: pointer;
    }

    </style>
</head>
<body>

<?php include('sidemenu.php'); ?>

<div class="head-div">
    <h1 align = "center">Orders</h1>
</div>

<?php 
    $sql = "SELECT * FROM `transaction`";

    $row_count = 0;
    
    if($run = mysqli_query($con,$sql))
    {
        $row_count = mysqli_num_rows($run);
    }

if($row_count>0)
    if($run = mysqli_query($con,$sql))
    for($i=1; $i<=$row_count;$i++)
        while ($row = $run->fetch_assoc()) {
        $receipt = $row["receipt_id"];
        $venue_name = $row["venue_name"];
        $venue_price = $row["venue_price"];
        $sl_name = $row["light_name"];
        $sl_price = $row["light_price"];
        $photo_name = $row["photo_name"];
        $photo_price = $row["photo_price"];
        $food_total = $row["food_total"];

        $id = $row["id_user"];
        $pending = $row["pending"];
        if($pending == 1)
        { ?>
        <div class="main_div">
        <h1 align="center"></h1>
        <button class="collapsible">Order no.: <?php echo $receipt?><?php echo ' for User ID: ',$id?></button>
        <div class="content">
            <div class="inside_content">
                <table class = "table-headers">
                    <tr>
                        <th>Particulars</th>
                        <th>Price</th>
                        <th>Total</th>
                    </tr>
                </table>
                <div class="inside-content">
                    <table class="table-headers">
                        <tr>
                            <td> <?php echo $venue_name; ?> </td>
                            <td> <?php echo $venue_price; ?> </td>
                            <td> <?php echo '  '; ?></td>

                        </tr>

                        <tr>
                            <td> <?php echo $sl_name; ?> </td>
                            <td> <?php echo $sl_price; ?> </td>
                            <td> <?php echo '  '; ?></td>
                        </tr>

                        <tr>
                            <td> <?php echo $photo_name; ?> </td>
                            <td> <?php echo $photo_price; ?> </td>
                            <td> <?php echo '  '; ?></td>
                        </tr>

                        <tr>
                            <td><?php echo 'Food'?></td>
                            <td> &nbsp </td>
                            <td> <?php echo $food_total; ?> </td>
                        </tr>
                    </table>
                    <form action="orders.php" method="post">
                                <input type="text" name="add" id="" hidden>
                                <input class = "accept-order-button" type="submit" value="Accept" name="sub"/>
                            </form>
                </div>
            </div>
        </div>
    <?php } }
    else
    {
        ?>
    <div class="no-result">
        <h3>No orders found</h3>
    </div>
    <?php } ?>

    <script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.maxHeight){
      content.style.maxHeight = null;
    } else {
      content.style.maxHeight = content.scrollHeight + "px";
    } 
  });
}
</script>

<?php 
$getAdminInput = strip_tags($_POST['add']);

if($getAdminInput=="")
{
    $query = "UPDATE transaction SET pending = '0'";

    $runTheAcceptQuery = mysqli_query($con,$query);
    if($runTheAcceptQuery)
    {
        echo 'Accepted!';
    }
}
?>
</body>

</html>

