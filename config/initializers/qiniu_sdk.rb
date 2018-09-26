#!/usr/bin/env ruby

require 'qiniu'

Qiniu.establish_connection! access_key: ENV['ACCESS_KEY'],
                            secret_key: ENV['SECRET_KEY']

Rails.application.config.qiniu_domain = "p4wgbyuaw.bkt.clouddn.com"