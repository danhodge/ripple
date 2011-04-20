# Copyright 2010 Sean Cribbs, Sonian Inc., and Basho Technologies, Inc.
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
require 'ripple/associations'

module Ripple
  module Associations
    module Instantiators

      def build(attrs={})
        instantiate_target(:new, attrs)
      end

      def create(attrs={})
        instantiate_target(:create, attrs)
      end

      def create!(attrs={})
        instantiate_target(:create!, attrs)
      end

      protected
      def instantiate_target
        raise NotImplementedError
      end

    end
  end
end