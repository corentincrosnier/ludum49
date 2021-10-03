/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

fix_triangle = physics_fixture_create();
physics_fixture_set_polygon_shape(fix_triangle);
physics_fixture_add_point(fix_triangle, 32, 32);
physics_fixture_add_point(fix_triangle, 0, 32);
physics_fixture_add_point(fix_triangle, 16, 0);

physics_fixture_set_density(fix_triangle, phy_density);
physics_fixture_set_friction(fix_triangle, phy_friction);
physics_fixture_set_restitution(fix_triangle, phy_restitution);
physics_fixture_set_linear_damping(fix_triangle, phy_lineardamping);
physics_fixture_set_angular_damping(fix_triangle, phy_angulardamping);