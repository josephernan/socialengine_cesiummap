<?php
/**
 * SocialEngine
 *
 * @category   Application_Extensions
 * @package    Airport
 * @author     Stars Developer
 */

?>

<?php if(empty($this->closeSmoothbox)): ?>
<?php echo $this->form->render(); ?>
<?php else: ?>
<?php echo $this->message; ?>
<script type="text/javascript">
setTimeout(function(){
    window.parent.$("sd-user-threat-<?php echo $this->threat->getIdentity(); ?>").destroy();
    window.parent.Smoothbox.close();
},1000);
</script>
<?php endif; ?>