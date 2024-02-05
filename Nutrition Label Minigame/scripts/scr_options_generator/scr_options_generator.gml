// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

randomize()

function options_generator(){
	// generate the eg sprite indices
	eg_num1 = irandom_range(1,4);
	eg_num2 = irandom_range(1,4);
	if (eg_num1 = eg_num2) {
		eg_num2 = irandom_range(1,4);
	}
	
	// generate the nl sprite indices
	nl_num1 = irandom_range(1,4);
	nl_num2 = irandom_range(1,4);
	if (nl_num1 = nl_num2) {
		nl_num2 = irandom_range(1,4);
	}
	
	// pairing mechanism
	option1 = [eg_num1, nl_num1];
	option2 = [eg_num2, nl_num2];
	
	show_debug_message(option1);
	show_debug_message(option2);
}