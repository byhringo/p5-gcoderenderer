; generated by PrusaSlicer 2.5.0+MacOS-arm64 on 2023-03-27 at 16:27:01 UTC

; 

; external perimeters extrusion width = 0.68mm
; perimeters extrusion width = 0.68mm
; infill extrusion width = 0.68mm
; solid infill extrusion width = 0.68mm
; top infill extrusion width = 0.60mm

M201 X1000 Y1000 Z1000 E5000 ; sets maximum accelerations, mm/sec^2
M203 X200 Y200 Z12 E120 ; sets maximum feedrates, mm / sec
M204 P1250 R1250 T1250 ; sets acceleration (P, T) and retract acceleration (R), mm/sec^2
M205 X8.00 Y8.00 Z0.40 E1.50 ; sets the jerk limits, mm/sec
M205 S0 T0 ; sets the minimum extruding and travel feed rate, mm/sec
M107
;TYPE:Custom
; Initial setups
G90 ; use absolute coordinates
M83 ; extruder relative mode
M220 S100 ; reset speed factor to 100%
M221 S100 ; reset extrusion rate to 100%

; Set the heating
M190 S50 ; wait for bed to heat up
M104 S240 ; start nozzle heating but don't wait

; Home
G1 Z3 F3000 ; move z up little to prevent scratching of surface
G28 ; home all axes
G1 X3 Y3 F5000 ; move to corner of the bed to avoid ooze over centre

; Wait for final heating
M109 S240 ; wait for the nozzle to heat up
M190 S50 ; wait for the bed to heat up

G92 E0 ; Reset Extruder
M221 S95
G21 ; set units to millimeters
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion
M900 K0
M107
;LAYER_CHANGE
;Z:0.2
;HEIGHT:0.2
;BEFORE_LAYER_CHANGE
;0.2
G92 E0
G1 E-1.2 F2100
G1 Z.2 F7800
;AFTER_LAYER_CHANGE
;0.2
G1 X149.987 Y149.854
G1 E1.2 F1200
;TYPE:External perimeter
;WIDTH:0.674999
G1 F640.743
G1 X150.324 Y150.301 E.03295
G1 X151.488 Y152.159 E.1291
G1 X152.576 Y153.981 E.12488
G1 X153.435 Y155.604 E.10808
G1 X154.022 Y156.815 E.07924
G1 X154.139 Y157.141 E.02038
G1 X152.302 Y157.479 E.10992
G1 X150.637 Y157.695 E.09888
G1 X149.591 Y157.768 E.06169
G1 X148.554 Y157.787 E.06108
G1 X147.125 Y157.728 E.08414
G1 X146.399 Y157.63 E.04313
G1 X145.837 Y157.459 E.03457
G1 X145.827 Y157.405 E.00323
G1 X146.05 Y156.9 E.03252
G1 X146.63 Y155.79 E.07371
G1 X147.859 Y153.547 E.15056
G1 X149.822 Y150.044 E.23637
G1 X149.928 Y149.922 E.00949
G1 X150.129 Y150.396 F7800
G1 E-1.2 F2100
G1 X150.014 Y150.996 F7800
G1 E1.2 F1200
;TYPE:Perimeter
G1 F640.743
G1 X150.949 Y152.489 E.10374
G1 X152.025 Y154.291 E.12354
G1 X152.871 Y155.889 E.10645
G1 X153.246 Y156.663 E.05058
G1 X152.205 Y156.854 E.0623
G1 X150.574 Y157.065 E.0968
G1 X149.563 Y157.136 E.05963
G1 X148.561 Y157.154 E.05902
G1 X147.197 Y157.099 E.08036
G1 X146.694 Y157.032 E.02985
G1 X147.187 Y156.088 E.06267
G1 X148.412 Y153.854 E.15001
G1 X149.97 Y151.074 E.18755
G1 E-1.2 F2100
G1 X152.098 Y154.836 F7800
G1 E1.2 F1200
;TYPE:Solid infill
;WIDTH:0.72801
G1 F591.163
G1 X149.732 Y152.469 E.21356
G1 X149.384 Y153.09 E.04541
G1 X152.496 Y156.202 E.28081
G1 X152.548 Y156.309 E.0076
G1 X151.759 Y156.434 E.05095
G1 X149.036 Y153.711 E.24572
G1 X148.691 Y154.335 E.04548
G1 X150.901 Y156.545 E.19946
G1 X150.527 Y156.594 E.02408
G1 X150.016 Y156.629 E.03265
G1 X148.349 Y154.962 E.15041
G1 X148.008 Y155.59 E.04558
G1 X149.089 Y156.671 E.09749
G1 X148.566 Y156.68 E.03335
G1 X148.11 Y156.661 E.02914
G1 X147.458 Y156.008 E.05887
G1 E-1.2 F2100
G1 X149.894 Y148.577 F7800
G1 E1.2 F1200
;TYPE:External perimeter
;WIDTH:0.674999
G1 F640.743
G1 X149.461 Y148.717 E.02679
G1 X149.137 Y148.993 E.02506
G1 X148.825 Y149.468 E.03343
G1 X148.183 Y150.56 E.07456
G1 X146.199 Y145.631 E.31281
G1 X145.066 Y142.724 E.18364
G1 X144.985 Y142.479 E.0152
G1 X146.926 Y142.348 E.11451
G1 X149.191 Y142.251 E.13345
G1 X152.049 Y142.215 E.16824
G1 X153.511 Y142.276 E.08613
G1 X154.98 Y142.403 E.0868
G1 X155.004 Y142.438 E.00248
G1 X154.76 Y143.165 E.04513
G1 X152.491 Y148.838 E.35964
G1 X151.869 Y150.451 E.1018
G1 X151.302 Y149.589 E.06076
G1 X150.84 Y148.961 E.04589
G1 X150.388 Y148.66 E.03198
G1 X149.983 Y148.592 E.02417
G1 X149.635 Y148.203 F7800
G1 X149.797 Y147.969
;TYPE:Perimeter
G1 F640.743
G1 X149.407 Y148.051 E.02347
G1 X149.07 Y148.221 E.02221
G1 X148.815 Y148.422 E.01913
G1 X148.608 Y148.647 E.01796
G1 X148.29 Y149.133 E.0342
G1 X146.787 Y145.398 E.237
G1 X145.873 Y143.052 E.14818
G1 X146.961 Y142.979 E.06421
G1 X149.209 Y142.883 E.13243
G1 X152.04 Y142.848 E.16668
G1 X153.471 Y142.907 E.08429
G1 X154.158 Y142.966 E.04064
G1 X151.719 Y149.083 E.38762
G1 X151.429 Y148.672 E.02957
G1 X151.219 Y148.455 E.01782
G1 X150.894 Y148.211 E.02391
G1 X150.511 Y148.041 E.02466
G1 X149.885 Y147.95 E.03724
G1 E-1.2 F2100
G1 X153.509 Y144.08 F7800
G1 E1.2 F1200
;TYPE:Solid infill
;WIDTH:0.707683
G1 F609.24
G1 X152.786 Y143.358 E.06323
G1 X151.814 Y143.326 E.06022
G1 X153.021 Y144.533 E.10567
G1 X152.753 Y145.205 E.04478
G1 X150.885 Y143.337 E.1635
G1 X149.956 Y143.348 E.05752
G1 X152.484 Y145.876 E.22134
G1 X152.215 Y146.548 E.04478
G1 X149.033 Y143.365 E.27866
G1 X148.131 Y143.403 E.05587
G1 X151.947 Y147.219 E.33409
G1 X151.678 Y147.891 E.04478
G1 X147.229 Y143.442 E.38951
G1 X146.549 Y143.482 E.04222
G1 X146.689 Y143.841 E.02389
G1 X150.379 Y147.532 E.32312
G1 X150.128 Y147.483 E.01585
G1 X149.908 Y147.469 E.01367
G1 X149.454 Y147.547 E.02849
G1 X147.292 Y145.385 E.18927
G1 X147.926 Y146.959 E.10501
G1 X149.012 Y148.045 E.09509
G1 E-1.2 F2100
M107
;TYPE:Custom
; Filament-specific end gcode
G4 ; wait
G92 E0 ; prepare to retract
G1 E-0.5 F3000; retract to avoid stringing

; Anti-stringing end wiggle
G91 ; use relative coordinates
G1 X1 Y1 F1200

; Raise nozzle and present bed
G1 Z120.2 ; Move print head up
G90 ; use absolute coordinates

; Reset print setting overrides
M200 D0 ; disable volumetric e
M220 S100 ; reset speed factor to 100%
M221 S100 ; reset extrusion rate to 100%

; Shut down printer
M106 S0 ; turn-off fan
M104 S0 ; turn-off hotend
M140 S0 ; turn-off bed
M150 P0 ; turn off led
M85 S0 ; deactivate idle timeout
M84 ; disable motors
; filament used [mm] = 10.37
; filament used [cm3] = 0.02
; filament used [g] = 0.03
; filament cost = 0.00
; total filament used [g] = 0.03
; total filament cost = 0.00
; estimated printing time (normal mode) = 38s

; prusaslicer_config = begin
; avoid_crossing_perimeters = 0
; avoid_crossing_perimeters_max_detour = 0
; bed_custom_model = 
; bed_custom_texture = 
; bed_shape = 0x0,300x0,300x300,0x300
; bed_temperature = 50
; before_layer_gcode = ;BEFORE_LAYER_CHANGE\n;[layer_z]\nG92 E0
; between_objects_gcode = 
; bottom_fill_pattern = monotonic
; bottom_solid_layers = 4
; bottom_solid_min_thickness = 0.5
; bridge_acceleration = 0
; bridge_angle = 0
; bridge_fan_speed = 80
; bridge_flow_ratio = 1
; bridge_speed = 25
; brim_separation = 0
; brim_type = outer_only
; brim_width = 0
; clip_multipart_objects = 1
; color_change_gcode = M600
; complete_objects = 0
; cooling = 0
; cooling_tube_length = 5
; cooling_tube_retraction = 91.5
; default_acceleration = 0
; default_filament_profile = "Generic PLA @Artillery"
; default_print_profile = 0.20mm NORMAL @Artillery
; deretract_speed = 0
; disable_fan_first_layers = 4
; dont_support_bridges = 1
; draft_shield = disabled
; duplicate_distance = 6
; elefant_foot_compensation = 0
; end_filament_gcode = "; Filament-specific end gcode"
; end_gcode = G4 ; wait\nG92 E0 ; prepare to retract\nG1 E-0.5 F3000; retract to avoid stringing\n\n; Anti-stringing end wiggle\nG91 ; use relative coordinates\nG1 X1 Y1 F1200\n\n; Raise nozzle and present bed\n{if layer_z < max_print_height}G1 Z{z_offset+min(layer_z+120, max_print_height)}{endif} ; Move print head up\nG90 ; use absolute coordinates\n\n; Reset print setting overrides\nM200 D0 ; disable volumetric e\nM220 S100 ; reset speed factor to 100%\nM221 S100 ; reset extrusion rate to 100%\n\n; Shut down printer\nM106 S0 ; turn-off fan\nM104 S0 ; turn-off hotend\nM140 S0 ; turn-off bed\nM150 P0 ; turn off led\nM85 S0 ; deactivate idle timeout\nM84 ; disable motors\n
; ensure_vertical_shell_thickness = 0
; external_perimeter_extrusion_width = 0
; external_perimeter_speed = 25
; external_perimeters_first = 1
; extra_loading_move = -2
; extra_perimeters = 1
; extruder_clearance_height = 20
; extruder_clearance_radius = 20
; extruder_colour = #FFFF00
; extruder_offset = 0x0
; extrusion_axis = E
; extrusion_multiplier = 1.12
; extrusion_width = 0
; fan_always_on = 1
; fan_below_layer_time = 100
; filament_colour = #008000
; filament_cooling_final_speed = 3.4
; filament_cooling_initial_speed = 2.2
; filament_cooling_moves = 4
; filament_cost = 82.26
; filament_density = 1.23
; filament_deretract_speed = 20
; filament_diameter = 1.75
; filament_load_time = 0
; filament_loading_speed = 28
; filament_loading_speed_start = 3
; filament_max_volumetric_speed = 1.35
; filament_minimal_purge_on_wipe_tower = 15
; filament_notes = ""
; filament_ramming_parameters = "120 100 6.6 6.8 7.2 7.6 7.9 8.2 8.7 9.4 9.9 10.0| 0.05 6.6 0.45 6.8 0.95 7.8 1.45 8.3 1.95 9.7 2.45 10 2.95 7.6 3.45 7.6 3.95 7.6 4.45 7.6 4.95 7.6"
; filament_retract_length = 1.2
; filament_retract_lift = 0
; filament_settings_id = "Fillamentum Flexfill 98A - No Constraints"
; filament_soluble = 0
; filament_spool_weight = 230
; filament_toolchange_delay = 0
; filament_type = FLEX
; filament_unload_time = 0
; filament_unloading_speed = 90
; filament_unloading_speed_start = 100
; filament_vendor = Fillamentum
; filament_wipe = 0
; fill_angle = 45
; fill_density = 0%
; fill_pattern = rectilinear
; first_layer_acceleration = 0
; first_layer_acceleration_over_raft = 0
; first_layer_bed_temperature = 50
; first_layer_extrusion_width = 0
; first_layer_height = 0.2
; first_layer_speed = 30
; first_layer_speed_over_raft = 30
; first_layer_temperature = 240
; full_fan_speed_layer = 6
; fuzzy_skin = none
; fuzzy_skin_point_dist = 0.8
; fuzzy_skin_thickness = 0.3
; gap_fill_enabled = 1
; gap_fill_speed = 50
; gcode_comments = 0
; gcode_flavor = marlin
; gcode_label_objects = 0
; gcode_resolution = 0.0125
; gcode_substitutions = 
; high_current_on_filament_swap = 0
; host_type = octoprint
; infill_acceleration = 0
; infill_anchor = 600%
; infill_anchor_max = 50
; infill_every_layers = 1
; infill_extruder = 1
; infill_extrusion_width = 0
; infill_first = 0
; infill_only_where_needed = 0
; infill_overlap = 25%
; infill_speed = 100
; inherits_cummulative = ;;"Artillery Sidewinder X1"
; interface_shells = 0
; ironing = 0
; ironing_flowrate = 15%
; ironing_spacing = 0.1
; ironing_speed = 15
; ironing_type = top
; layer_gcode = ;AFTER_LAYER_CHANGE\n;[layer_z]
; layer_height = 0.2
; machine_limits_usage = emit_to_gcode
; machine_max_acceleration_e = 5000,5000
; machine_max_acceleration_extruding = 1250,1250
; machine_max_acceleration_retracting = 1250,1250
; machine_max_acceleration_travel = 1500,1250
; machine_max_acceleration_x = 1000,960
; machine_max_acceleration_y = 1000,960
; machine_max_acceleration_z = 1000,1000
; machine_max_feedrate_e = 120,120
; machine_max_feedrate_x = 200,100
; machine_max_feedrate_y = 200,100
; machine_max_feedrate_z = 12,12
; machine_max_jerk_e = 1.5,1.5
; machine_max_jerk_x = 8,8
; machine_max_jerk_y = 8,8
; machine_max_jerk_z = 0.4,0.4
; machine_min_extruding_rate = 0,0
; machine_min_travel_rate = 0,0
; max_fan_speed = 60
; max_layer_height = 0
; max_print_height = 400
; max_print_speed = 80
; max_volumetric_extrusion_rate_slope_negative = 0
; max_volumetric_extrusion_rate_slope_positive = 0
; max_volumetric_speed = 0
; min_bead_width = 85%
; min_fan_speed = 60
; min_feature_size = 25%
; min_layer_height = 0.07
; min_print_speed = 15
; min_skirt_length = 0
; mmu_segmented_region_max_width = 0
; notes = 
; nozzle_diameter = 0.6
; only_retract_when_crossing_perimeters = 0
; ooze_prevention = 0
; output_filename_format = [input_filename_base].gcode
; overhangs = 1
; parking_pos_retraction = 92
; pause_print_gcode = 
; perimeter_acceleration = 0
; perimeter_extruder = 1
; perimeter_extrusion_width = 0
; perimeter_generator = arachne
; perimeter_speed = 50
; perimeters = 2
; physical_printer_settings_id = 
; post_process = 
; print_settings_id = layer 0.2 infill 15% Rectilinear
; printer_model = X1
; printer_notes = Don't remove the following keywords! These keywords are used in the "compatible printer" condition of the print and filament profiles to link the particular print and filament profiles to this printer profile.\nPRINTER_VENDOR_Artillery\nPRINTER_MODEL_X1
; printer_settings_id = Hjemmeprintern - 0.6
; printer_technology = FFF
; printer_variant = 0.4
; printer_vendor = 
; raft_contact_distance = 0.1
; raft_expansion = 1.5
; raft_first_layer_density = 90%
; raft_first_layer_expansion = 3
; raft_layers = 0
; remaining_times = 0
; resolution = 0
; retract_before_travel = 1
; retract_before_wipe = 0%
; retract_layer_change = 1
; retract_length = 1.9
; retract_length_toolchange = 4
; retract_lift = 0.6
; retract_lift_above = 0
; retract_lift_below = 380
; retract_restart_extra = 0
; retract_restart_extra_toolchange = 0
; retract_speed = 35
; seam_position = aligned
; silent_mode = 0
; single_extruder_multi_material = 0
; single_extruder_multi_material_priming = 1
; skirt_distance = 6
; skirt_height = 1
; skirts = 0
; slice_closing_radius = 0.049
; slicing_mode = regular
; slowdown_below_layer_time = 15
; small_perimeter_speed = 25
; solid_infill_below_area = 25
; solid_infill_every_layers = 0
; solid_infill_extruder = 1
; solid_infill_extrusion_width = 0
; solid_infill_speed = 100
; spiral_vase = 0
; standby_temperature_delta = -5
; start_filament_gcode = "M900 K0"
; start_gcode = ; Initial setups\nG90 ; use absolute coordinates\nM83 ; extruder relative mode\nM220 S100 ; reset speed factor to 100%\nM221 S100 ; reset extrusion rate to 100%\n\n; Set the heating\nM190 S[first_layer_bed_temperature] ; wait for bed to heat up\nM104 S[first_layer_temperature] ; start nozzle heating but don't wait\n\n; Home\nG1 Z3 F3000 ; move z up little to prevent scratching of surface\nG28 ; home all axes\nG1 X3 Y3 F5000 ; move to corner of the bed to avoid ooze over centre\n\n; Wait for final heating\nM109 S[first_layer_temperature] ; wait for the nozzle to heat up\nM190 S[first_layer_bed_temperature] ; wait for the bed to heat up\n\n; Return to prime position, Prime line routine\nG92 E0 ; Reset Extruder\nG1 Z3 F3000 ; move z up little to prevent scratching of surface\nG1 X10 Y.5 Z0.25 F5000.0 ; Move to start position\nG1 X100 Y.5 Z0.25 F1500.0 E15 ; Draw the first line\nG1 X100 Y.2 Z0.25 F5000.0 ; Move to side a little\nG1 X10 Y.2 Z0.25 F1500.0 E30 ; Draw the second line\nG92 E0 ; Reset Extruder\nM221 S{if layer_height<0.075}100{else}95{endif}
; support_material = 0
; support_material_angle = 0
; support_material_auto = 1
; support_material_bottom_contact_distance = 0
; support_material_bottom_interface_layers = -1
; support_material_buildplate_only = 0
; support_material_closing_radius = 2
; support_material_contact_distance = 0.2
; support_material_enforce_layers = 0
; support_material_extruder = 1
; support_material_extrusion_width = 0
; support_material_interface_contact_loops = 0
; support_material_interface_extruder = 1
; support_material_interface_layers = 3
; support_material_interface_pattern = rectilinear
; support_material_interface_spacing = 0
; support_material_interface_speed = 100%
; support_material_pattern = rectilinear
; support_material_spacing = 2.5
; support_material_speed = 60
; support_material_style = grid
; support_material_synchronize_layers = 0
; support_material_threshold = 0
; support_material_with_sheath = 1
; support_material_xy_spacing = 50%
; temperature = 240
; template_custom_gcode = 
; thick_bridges = 1
; thin_walls = 1
; threads = 8
; thumbnails = 
; thumbnails_format = PNG
; toolchange_gcode = 
; top_fill_pattern = monotonic
; top_infill_extrusion_width = 0
; top_solid_infill_speed = 50
; top_solid_layers = 6
; top_solid_min_thickness = 0.7
; travel_speed = 130
; travel_speed_z = 0
; use_firmware_retraction = 0
; use_relative_e_distances = 1
; use_volumetric_e = 0
; variable_layer_height = 1
; wall_distribution_count = 1
; wall_transition_angle = 10
; wall_transition_filter_deviation = 25%
; wall_transition_length = 100%
; wipe = 1
; wipe_into_infill = 0
; wipe_into_objects = 0
; wipe_tower = 0
; wipe_tower_bridging = 10
; wipe_tower_brim_width = 2
; wipe_tower_no_sparse_layers = 0
; wipe_tower_rotation_angle = 0
; wipe_tower_width = 60
; wipe_tower_x = 180
; wipe_tower_y = 140
; wiping_volumes_extruders = 70,70
; wiping_volumes_matrix = 0
; xy_size_compensation = 0
; z_offset = 0
; prusaslicer_config = end
