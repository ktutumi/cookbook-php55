#
# Cookbook Name:: apache2
# Attributes:: apache
#
# Copyright 2008-2013, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['php55']['packages'] = [
  'php',
  'php-cli',
  'php-common',
  'php-gd',
  'php-mbstring',
  'php-mcrypt',
  'php-pdo',
  'php-pear',
  'php-xml'
]

# php.ini
default['php55']['short_open_tag']                = 'On'
default['php55']['timezone']                      = 'Asia/Tokyo'
default['php55']['output_handler']                = ''
default['php55']['max_execution_time']            = 30
default['php55']['max_input_time']                = 60
default['php55']['memory_limit']                  = 128
default['php55']['error_reporting']               = 'E_ALL & ~E_DEPRECATED & ~E_STRICT'
default['php55']['display_errors']                = 'Off'
default['php55']['post_max_size']                 = 8
default['php55']['upload_max_filesize']           = 2
default['php55']['mbstring.language']             = 'neutral'
default['php55']['mbstring.internal_encoding']    = ''
default['php55']['mbstring.http_input']           = 'pass'
default['php55']['mbstring.http_output']          = 'pass'
default['php55']['mbstring.encoding_translation'] = 'Off'
default['php55']['mbstring.detect_order']         = ''
default['php55']['mbstring.substitute_character'] = ''
default['php55']['mbstring.func_overload']        = 0
default['php55']['mbstring.strict_detection']     = 'Off'
