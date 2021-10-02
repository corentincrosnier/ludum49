/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

fix_rect = physics_fixture_create();
physics_fixture_set_box_shape(fix_rect, 16, 8);

physics_fixture_set_density(fix_rect, phy_density);
physics_fixture_set_friction(fix_rect, phy_friction);
physics_fixture_set_restitution(fix_rect, phy_restitution);
physics_fixture_set_linear_damping(fix_rect, phy_lineardamping);
physics_fixture_set_angular_damping(fix_rect, phy_angulardamping);