/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 35C765A2
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "op" "1"
if(vspeed < 0)
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7E052CCB
	/// @DnDParent : 35C765A2
	/// @DnDArgument : "var" "downspeed"
	/// @DnDArgument : "value" "-vspeed"
	var downspeed = -vspeed;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 1D6A24D1
	/// @DnDApplyTo : {moveobstacle}
	/// @DnDParent : 35C765A2
	/// @DnDArgument : "value" "downspeed"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "1"
	with(moveobstacle) {
	y += downspeed;
	}
}