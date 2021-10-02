/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

fix_square = physics_fixture_create();
physics_fixture_set_box_shape(fix_square, 16, 16);

physics_fixture_set_density(fix_square, phy_density);
physics_fixture_set_friction(fix_square, phy_friction);
physics_fixture_set_restitution(fix_square, phy_restitution);
physics_fixture_set_linear_damping(fix_square, phy_lineardamping);
physics_fixture_set_angular_damping(fix_square, phy_angulardamping);
