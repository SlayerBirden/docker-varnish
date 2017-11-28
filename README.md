# docker-varnish
Simple Docker image for varnish server.

## Usage

There are no default VCL config in this image, you need to map one via volumes.

You can also specify `varnishd` flags via the VARNISHD_FLAGS environment variable. Default flag is "-f /etc/varnish/default.vcl".

## Example

```
docker run -v ${PWD}/assets/conf/varnishd/magento2.vcl:/etc/varnish/default.vcl:ro --rm -t -p9090:80 -e"VARNISHD_FLAGS=-f /etc/varnish/default.vcl -a :80" slayerbirden/docker-varnish
```