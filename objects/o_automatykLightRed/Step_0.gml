/// @description Change sprite when proper cable connected
// W tym edytorze możesz zapisać swój kod

if(global.mg5_redConnected){
	self.sprite_index = asset_get_index("spr_automatykLightON");
}
