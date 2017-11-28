#!/bin/sh

varnishd ${VARNISHD_FLAGS}

exec "$@"
