cd "$(dirname "$0")";
export UV_CACHE_DIR=".cache";
rm -rf tmp && mkdir -p $_ && cd $_;

copier copy \
    --vcs-ref main \
    --data project_name="lorem-ipsum" \
    --data project_description="Lorem ipsum dolor sit amet." \
    --skip README.md \
    --skip debug_template.sh \
    ../ ./;

make install;
pre-commit run --files *;
