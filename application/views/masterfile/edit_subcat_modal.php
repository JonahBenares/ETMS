<?php foreach($subcat AS $s){ ?>
	<div class="form-group">
		<input class="form-control" name = "subcat_id" type = "hidden" value = "<?php echo $id;?>"/>
	</div>	
	<div class="form-group">
        <label for="" class="control-label mb-1">Subcategory Name:</label>
        <input id="" name="subcat" type="text" class="form-control bor-radius5" value = "<?php echo $s->subcat_name;?>">
        <label for="" class="control-label mb-1">Location:</label>
        <select name="location" class="form-control bor-radius5 cc-cvc">
            <option value = "">--Select Location--</option>
            <option value = "BCD" <?php echo (($s->location == 'BCD') ? ' selected' : '');?>>Bacolod</option>
            <option value = "BS" <?php echo (($s->location == 'BS') ? ' selected' : '');?>>Bago</option>
        </select>
        <label for="" class="control-label mb-1">Prefix Name:</label>
        <input id="" name="prefix" type="text" class="form-control bor-radius5" value = "<?php echo $s->subcat_prefix;?>">
        <label for="" class="control-label mb-1">Subcat Description:</label>
        <input id="" name="desc" type="text" class="form-control bor-radius5" value = "<?php echo $s->subcat_desc;?>">
    </div>
<?php } ?>

                   