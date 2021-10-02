/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

radius = 32;

fix_circle = physics_fixture_create();
physics_fixture_set_circle_shape(fix_circle, radius);

physics_fixture_set_density(fix_circle, phy_density);
physics_fixture_set_friction(fix_circle, phy_friction);
physics_fixture_set_restitution(fix_circle, phy_restitution);
physics_fixture_set_linear_damping(fix_circle, phy_lineardamping);
physics_fixture_set_angular_damping(fix_circle, phy_angulardamping);