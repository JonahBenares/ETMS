 <tr id='item_row<?php echo $list['count']; ?>'>  
    <td class="main-tab" align="center"><input type = "text" name = "asset_control_no<?php echo $list['count']?>" style = "text-align:center;width:100%;border:1px transparent;" value = "<?php echo $list['acn']; ?>" ></td>
     <td class="main-tab" align="center"><input type = "text" name = "acq_date<?php echo $list['count']?>" style = "text-align:center;width:100%;border:1px transparent;" value="<?php echo $list['acq_date']; ?>"></td>
     <td class="main-tab" align="center"><input type = "text" name = "item<?php echo $list['count']?>" value = "<?php echo $list['item']; ?>" style = "text-align:center;width:100%;border:1px transparent;"></td>
    <td class="main-tab" align="center"><input type = "text" name = "qty<?php echo $list['count']?>" style = "text-align:center;width:100%;border:1px transparent;" value="<?php echo $list['qty']; ?>"></td>
     <td class="main-tab" align="center"><input type = "text" name = "unit<?php echo $list['count']?>" style = "text-align:center;width:100%;border:1px transparent;" value="<?php echo $list['unit']; ?>"></td>
    <td class="main-tab" align="center"><input type = "text" name = "price<?php echo $list['count']?>" style = "text-align:center;width:100%;border:1px transparent;" value="<?php if($list['set_id']==0){ echo $list['price']; } ?>" class="main-tab" align="center"></td>
    <td class="main-tab" align="center"><input type = "text" name = "total<?php echo $list['count']?>" style = "text-align:center;width:100%;border:1px transparent;" value="<?php if($list['set_id']==0){ echo number_format($list['total'],2); } ?>"></td>
    <td class = "hid"><center>
        <a class="btn btn-danger btn-sm text-white" onclick="remove_item(<?php echo $list['count']; ?>)"><span class=" fa fa-times"></span></a></center>
        <input type="hidden" name="itemid[]" value="<?php echo $list['et_id']; ?>">
        <input type="hidden" name="edid[]" value="<?php echo $list['ed_id']; ?>">
    </td>
    <!-- <input type="hidden" name="supplier_id[]" value="<?php echo $list['supplierid']; ?>">
    <input type="hidden" name="brand_id[]" value="<?php echo $list['brandid']; ?>">
    <input type="hidden" name="serial_id[]" value="<?php echo $list['serialid']; ?>"> -->
</tr>