<div class="container container-small">
   <div class="row" style="margin-top:100px;">
      <a class="btn btn-default float-right" href="#" onclick="history.back(-1)"style="margin-bottom:10px;">
         <i class="fa fa-arrow-left"></i> <?=label("Back");?></a>
      <?php echo form_open_multipart('customers/edit/'.$customer->id); ?>
            <div class="form-group">
            <label for="CustomerName"><?=label("CustomerName");?></label>
            <input type="text" maxlength="50" Required name="name" value="<?=$customer->name;?>" class="form-control" id="CustomerName" placeholder="<?=label("CustomerName");?>">
           </div>
           <div class="form-group">
            <label for="nit">NIT</label>
            <input type="text" maxlength="50" Required name="nit" value="<?=$customer->nit;?>" class="form-control" id="nit" placeholder="NIT">
           </div>
           <div class="form-group">
            <label for="direccion">Dirección</label>
            <input type="text"  Required name="direccion" value="<?=$customer->direccion;?>" class="form-control" id="direccion" placeholder="Dirección">
           </div>
           <div class="form-group">
            <label for="fechanac">Fecha de nacimiento (año-mes-dia)</label>
            <input type="text"  Required name="fechanac" value="<?=$customer->fechanac->format('Y-m-d');?>" class="form-control" id="fechanac" placeholder="Fecha de nacimiento">
           </div>
           <div class="form-group">
            <label for="CustomerPhone"><?=label("CustomerPhone");?></label>
            <input type="text" name="phone" maxlength="30" value="<?=$customer->phone;?>" class="form-control" id="CustomerPhone" placeholder="<?=label("CustomerPhone");?>">
           </div>
           <div class="form-group">
            <label for="CustomerEmail"><?=label("CustomerEmail");?></label>
            <input type="email" maxlength="50" name="email" value="<?=$customer->email;?>" class="form-control" id="CustomerEmail" placeholder="<?=label("CustomerEmail");?>">
           </div>
           <div class="form-group">
            <label for="CustomerDiscount"><?=label("CustomerDiscount");?></label>
            <input type="text" maxlength="5" name="discount" value="<?=$customer->discount;?>" class="form-control" id="CustomerDiscount" placeholder="<?=label("CustomerDiscount");?>">
           </div>
      </div>
      <div class="form-group">
       <button type="submit" class="btn btn-add"><?=label("Submit");?></button>
      </div>
      <?php echo form_close(); ?>
</div>
