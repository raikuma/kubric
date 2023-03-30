# movi def
docker run --rm --interactive \
	--user $(id -u):$(id -g)    \
	--volume "$(pwd):/kubric"   \
	--runtime nvidia --env KUBRIC_USE_GPU=1 \
	ciplab/wocho_kubruntu:latest    \
	/usr/bin/python3 /kubric/examples/movi_def_worker_modified.py \
	--frame_start 0 \
    --frame_end 3 \
	--min_num_dynamic_objects 0 \
	--max_num_dynamic_objects 0 \
	--min_num_static_objects 3 \
	--max_num_static_objects 3 \
	--resolution 1024x1024 \
	--camera=spheric_movement \
	--max_camera_angle 90.0 \
	--simulation_steps 0 \
	$@
