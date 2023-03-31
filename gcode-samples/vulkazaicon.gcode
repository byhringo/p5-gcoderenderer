; generated by PrusaSlicer 2.5.0+MacOS-arm64 on 2023-03-31 at 09:16:40 UTC

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
M190 S65 ; wait for bed to heat up
M104 S210 ; start nozzle heating but don't wait

; Home
G1 Z3 F3000 ; move z up little to prevent scratching of surface
G28 ; home all axes
G1 X3 Y3 F5000 ; move to corner of the bed to avoid ooze over centre

; Wait for final heating
M109 S210 ; wait for the nozzle to heat up
M190 S65 ; wait for the bed to heat up

G92 E0 ; Reset Extruder
M221 S95
G21 ; set units to millimeters
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion
; Filament gcode
M107
;LAYER_CHANGE
;Z:0.3
;HEIGHT:0.3
;BEFORE_LAYER_CHANGE
;0.3
G92 E0
G1 E-1.9 F2100
G1 Z.6 F7800
;AFTER_LAYER_CHANGE
;0.3
G1 X150.015 Y150.923
G1 Z.3
G1 E1.9 F2100
;TYPE:Perimeter
;WIDTH:0.675
G1 F941
G1 X151.208 Y152.845 E.17232
G1 X152.124 Y154.388 E.13664
G1 X152.996 Y156.034 E.14185
G1 X153.409 Y156.888 E.07224
G1 X152.275 Y157.096 E.08786
G1 X150.595 Y157.314 E.12898
G1 X149.553 Y157.387 E.07954
G1 X148.52 Y157.405 E.07873
G1 X147.097 Y157.347 E.10843
G1 X146.525 Y157.269 E.04395
G1 X147.064 Y156.237 E.0887
G1 X148.325 Y153.939 E.19962
G1 X149.971 Y151.001 E.25645
;WIPE_START
G1 F6240
G1 X151.208 Y152.845 E-.7099
G1 X152.124 Y154.388 E-.57362
G1 X152.887 Y155.829 E-.52148
;WIPE_END
G1 E-.095 F2100
G1 Z.9 F7800
G1 X149.998 Y149.823
G1 Z.3
G1 E1.9 F2100
;TYPE:External perimeter
G1 F941
G1 X150.051 Y149.876 E.00574
G1 X150.52 Y150.578 E.06429
G1 X151.729 Y152.528 E.17479
G1 X152.657 Y154.089 E.13823
G1 X153.541 Y155.758 E.14384
G1 X154.144 Y157.004 E.10543
G1 X154.26 Y157.352 E.02795
G1 X152.369 Y157.7 E.14644
G1 X150.655 Y157.922 E.13159
G1 X149.58 Y157.997 E.08211
G1 X148.513 Y158.016 E.0813
G1 X147.043 Y157.956 E.112
G1 X146.295 Y157.854 E.05749
G1 X145.716 Y157.679 E.04611
G1 X145.7 Y157.613 E.00521
G1 X145.929 Y157.091 E.0434
G1 X146.526 Y155.949 E.09814
G1 X147.791 Y153.643 E.20031
G1 X149.809 Y150.041 E.31441
G1 X149.939 Y149.891 E.01513
G1 X150.023 Y149.894 F7800
;WIPE_START
G1 F6240
G1 X150.051 Y149.876 E-.0362
G1 X150.52 Y150.578 E-.26989
G1 X151.729 Y152.528 E-.73375
G1 X152.657 Y154.089 E-.58027
G1 X152.927 Y154.6 E-.18489
;WIPE_END
G1 E-.095 F2100
G1 Z.9 F7800
G1 X152.044 Y154.629
G1 Z.3
G1 E1.9 F2100
;TYPE:Solid infill
;WIDTH:0.716166
G1 F941
G1 X149.749 Y152.334 E.26387
G1 X149.418 Y152.924 E.05505
G1 X152.421 Y155.928 E.34528
G1 X152.735 Y156.546 E.05636
G1 X152.214 Y156.642 E.04307
G1 X149.087 Y153.515 E.35949
G1 X148.756 Y154.106 E.05505
G1 X151.398 Y156.748 E.30377
G1 X150.582 Y156.854 E.0669
G1 X148.431 Y154.703 E.24728
G1 X148.107 Y155.3 E.05527
G1 X149.722 Y156.916 E.18573
G1 X148.827 Y156.942 E.07285
G1 X147.783 Y155.898 E.12002
G1 X147.458 Y156.495 E.05527
G1 X148.168 Y157.205 E.08158
;WIPE_START
G1 F6240
G1 X147.458 Y156.495 E-.32082
G1 X147.783 Y155.898 E-.21735
G1 X148.827 Y156.942 E-.472
G1 X149.722 Y156.916 E-.28652
G1 X148.598 Y155.791 E-.50831
;WIPE_END
G1 E-.095 F2100
G1 Z.9 F7800
G1 X149.796 Y147.957
G1 Z.3
G1 E1.9 F2100
;TYPE:Perimeter
;WIDTH:0.675
G1 F941
G1 X149.401 Y148.044 E.03078
G1 X149.076 Y148.208 E.02776
G1 X148.81 Y148.417 E.02576
G1 X148.61 Y148.634 E.02245
G1 X148.233 Y149.218 E.05294
G1 X146.65 Y145.286 E.32284
G1 X145.686 Y142.812 E.20223
G1 X146.874 Y142.732 E.09067
G1 X148.575 Y142.653 E.12969
G1 X149.821 Y142.617 E.09494
G1 X152.188 Y142.598 E.1803
G1 X153.571 Y142.657 E.10538
G1 X154.345 Y142.725 E.05918
G1 X151.78 Y149.16 E.52759
G1 X151.43 Y148.663 E.04629
G1 X151.226 Y148.451 E.02243
G1 X150.887 Y148.198 E.03215
G1 X150.518 Y148.034 E.03083
G1 X149.884 Y147.938 E.04882
G1 X149.892 Y148.547 F7800
;TYPE:External perimeter
G1 F941
G1 X149.453 Y148.688 E.03514
G1 X149.121 Y148.969 E.03317
G1 X148.801 Y149.458 E.0445
G1 X148.13 Y150.598 E.10069
G1 X146.083 Y145.511 E.41764
G1 X144.918 Y142.522 E.24432
G1 X144.831 Y142.257 E.02119
G1 X146.839 Y142.122 E.15333
G1 X148.552 Y142.043 E.13058
G1 X149.81 Y142.006 E.09583
G1 X152.199 Y141.987 E.18198
G1 X153.61 Y142.048 E.10758
G1 X155.129 Y142.18 E.11606
G1 X155.155 Y142.227 E.00409
G1 X154.903 Y142.975 E.06015
G1 X152.57 Y148.808 E.47848
G1 X151.924 Y150.485 E.13682
G1 X151.332 Y149.583 E.08221
G1 X150.86 Y148.94 E.06071
G1 X150.399 Y148.633 E.04224
G1 X149.981 Y148.562 E.03224
G1 X149.631 Y148.166 F7800
;WIPE_START
G1 F6240
G1 X149.453 Y148.688 E-.17354
G1 X149.121 Y148.969 E-.13925
G1 X148.801 Y149.458 E-.18681
G1 X148.13 Y150.598 E-.42271
G1 X147.099 Y148.036 E-.88269
;WIPE_END
G1 E-.095 F2100
G1 Z.9 F7800
G1 X152.718 Y142.808
G1 Z.3
G1 E1.9 F2100
;TYPE:Solid infill
;WIDTH:0.709532
G1 F941
G1 X153.504 Y143.595 E.08949
G1 X153.244 Y144.247 E.05648
G1 X152.055 Y143.058 E.13525
G1 X151.15 Y143.065 E.07288
G1 X152.983 Y144.898 E.20866
G1 X152.723 Y145.55 E.05648
G1 X150.244 Y143.072 E.28206
G1 X149.349 Y143.088 E.07206
G1 X152.462 Y146.202 E.3543
G1 X152.201 Y146.854 E.05648
G1 X148.465 Y143.117 E.42521
G1 X147.598 Y143.163 E.06982
G1 X151.941 Y147.505 E.49417
G1 X151.68 Y148.157 E.05648
G1 X146.732 Y143.209 E.56312
G1 X146.341 Y143.23 E.03153
G1 X146.66 Y144.049 E.0708
G1 X150.099 Y147.488 E.39129
G1 X149.911 Y147.475 E.01509
G1 X149.575 Y147.522 E.02734
G1 X149.296 Y147.598 E.02325
G1 X147.252 Y145.554 E.23263
G1 X147.867 Y147.081 E.13247
G1 X148.899 Y148.113 E.11752
;WIPE_START
G1 F6240;_WIPE
G1 X147.867 Y147.081 E-.46693
G1 F6240;_WIPE
G1 X147.252 Y145.554 E-.52632
G1 F6240;_WIPE
G1 X149.047 Y147.349 E-.81175
;WIPE_END
G1 E-.095 F2100
G1 Z.9 F7800
M107
;TYPE:Custom
; Filament-specific end gcode 
;END gcode for filament
G4 ; wait
G92 E0 ; prepare to retract
G1 E-0.5 F3000; retract to avoid stringing

; Anti-stringing end wiggle
G91 ; use relative coordinates
G1 X1 Y1 F1200

; Raise nozzle and present bed
G1 Z120.9 ; Move print head up
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
; filament used [mm] = 14.62
; filament used [cm3] = 0.04
; filament used [g] = 0.04
; filament cost = 0.00
; total filament used [g] = 0.04
; total filament cost = 0.00
; estimated printing time (normal mode) = 35s

; prusaslicer_config = begin
; avoid_crossing_perimeters = 0
; avoid_crossing_perimeters_max_detour = 0
; bed_custom_model = 
; bed_custom_texture = 
; bed_shape = 0x0,300x0,300x300,0x300
; bed_temperature = 60
; before_layer_gcode = ;BEFORE_LAYER_CHANGE\n;[layer_z]\nG92 E0
; between_objects_gcode = 
; bottom_fill_pattern = monotonic
; bottom_solid_layers = 4
; bottom_solid_min_thickness = 0.5
; bridge_acceleration = 0
; bridge_angle = 0
; bridge_fan_speed = 100
; bridge_flow_ratio = 1
; bridge_speed = 25
; brim_separation = 0
; brim_type = outer_only
; brim_width = 0
; clip_multipart_objects = 1
; color_change_gcode = M600
; compatible_printers_condition_cummulative = ;printer_notes=~/.*PRINTER_VENDOR_Artillery.*/
; complete_objects = 0
; cooling = 1
; cooling_tube_length = 5
; cooling_tube_retraction = 91.5
; default_acceleration = 0
; default_filament_profile = "Generic PLA @Artillery"
; default_print_profile = 0.20mm NORMAL @Artillery
; deretract_speed = 0
; disable_fan_first_layers = 1
; dont_support_bridges = 1
; draft_shield = disabled
; duplicate_distance = 6
; elefant_foot_compensation = 0
; end_filament_gcode = "; Filament-specific end gcode \n;END gcode for filament\n"
; end_gcode = G4 ; wait\nG92 E0 ; prepare to retract\nG1 E-0.5 F3000; retract to avoid stringing\n\n; Anti-stringing end wiggle\nG91 ; use relative coordinates\nG1 X1 Y1 F1200\n\n; Raise nozzle and present bed\n{if layer_z < max_print_height}G1 Z{z_offset+min(layer_z+120, max_print_height)}{endif} ; Move print head up\nG90 ; use absolute coordinates\n\n; Reset print setting overrides\nM200 D0 ; disable volumetric e\nM220 S100 ; reset speed factor to 100%\nM221 S100 ; reset extrusion rate to 100%\n\n; Shut down printer\nM106 S0 ; turn-off fan\nM104 S0 ; turn-off hotend\nM140 S0 ; turn-off bed\nM150 P0 ; turn off led\nM85 S0 ; deactivate idle timeout\nM84 ; disable motors\n
; ensure_vertical_shell_thickness = 0
; external_perimeter_extrusion_width = 0
; external_perimeter_speed = 25
; external_perimeters_first = 0
; extra_loading_move = -2
; extra_perimeters = 1
; extruder_clearance_height = 20
; extruder_clearance_radius = 20
; extruder_colour = #FFFF00
; extruder_offset = 0x0
; extrusion_axis = E
; extrusion_multiplier = 1
; extrusion_width = 0
; fan_always_on = 1
; fan_below_layer_time = 100
; filament_colour = #428AF5
; filament_cooling_final_speed = 3.4
; filament_cooling_initial_speed = 2.2
; filament_cooling_moves = 4
; filament_cost = 20
; filament_density = 1.24
; filament_diameter = 1.75
; filament_load_time = 0
; filament_loading_speed = 28
; filament_loading_speed_start = 3
; filament_max_volumetric_speed = 15
; filament_minimal_purge_on_wipe_tower = 15
; filament_notes = ""
; filament_ramming_parameters = "120 100 6.6 6.8 7.2 7.6 7.9 8.2 8.7 9.4 9.9 10.0| 0.05 6.6 0.45 6.8 0.95 7.8 1.45 8.3 1.95 9.7 2.45 10 2.95 7.6 3.45 7.6 3.95 7.6 4.45 7.6 4.95 7.6"
; filament_settings_id = "Generic PLA @Artillery"
; filament_soluble = 0
; filament_spool_weight = 0
; filament_toolchange_delay = 0
; filament_type = PLA
; filament_unload_time = 0
; filament_unloading_speed = 90
; filament_unloading_speed_start = 100
; filament_vendor = Generic
; fill_angle = 45
; fill_density = 15%
; fill_pattern = rectilinear
; first_layer_acceleration = 0
; first_layer_acceleration_over_raft = 0
; first_layer_bed_temperature = 65
; first_layer_extrusion_width = 0
; first_layer_height = 0.3
; first_layer_speed = 30
; first_layer_speed_over_raft = 30
; first_layer_temperature = 210
; full_fan_speed_layer = 3
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
; layer_height = 0.3
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
; max_fan_speed = 100
; max_layer_height = 0
; max_print_height = 400
; max_print_speed = 80
; max_volumetric_extrusion_rate_slope_negative = 0
; max_volumetric_extrusion_rate_slope_positive = 0
; max_volumetric_speed = 0
; min_bead_width = 85%
; min_fan_speed = 100
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
; physical_printer_settings_id = Hjemmeprintern
; post_process = 
; print_settings_id = layer 0.3 infill 15% Rectilinear
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
; start_filament_gcode = "; Filament gcode\n"
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
; temperature = 205
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
