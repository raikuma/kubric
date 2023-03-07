# movi def
singularity exec ~/kubric.simg \
	python examples/movi_def_worker_modified.py \
	--frame_end 90 \
	--min_num_dynamic_objects 0 \
	--max_num_dynamic_objects 0 \
	--min_num_static_objects 2 \
	--max_num_static_objects 3 \
	--resolution 1920x1080 \
	--camera=spheric_movement \
	--max_camera_angle 90.0 \
	--simulation_steps 0 \
	$@
