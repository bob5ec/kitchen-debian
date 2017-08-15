# -*- encoding: utf-8 -*-
#
# Author:: bob5ec (<bob5ec@users.noreply.github.com>)
#
# Copyright (C) 2017, bob5ec
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'kitchen'

module Kitchen

  module Driver

    # Debian driver for Kitchen.
    #
    # @author bob5ec <bob5ec@users.noreply.github.com>
    class Debian < Kitchen::Driver::SSHBase

      def create(state)
      end

      def destroy(state)
      end
    end
  end
end