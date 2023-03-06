# movi def
docker run --rm --interactive \
	--user $(id -u):$(id -g)    \
	--volume "$(pwd):/kubric"   \
	kubricdockerhub/kubruntu    \
	/usr/bin/python3 /kubric/examples/movi_def_worker_modified.py \
	--frame_end 1 \
	--min_num_dynamic_objects 0 \
	--max_num_dynamic_objects 0 \
	--min_num_static_objects 2 \
	--max_num_static_objects 2 \
	--resolution 1280x720 \
	--camera=spheric_movement \
	--max_camera_angle 90.0 \
	--simulation_steps 0 \
	${@:1}
