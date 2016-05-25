# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module ComputeV1
      
      # An access configuration attached to an instance's network interface.
      class AccessConfig
        include Google::Apis::Core::Hashable
      
        # [Output Only] Type of the resource. Always compute#accessConfig for access
        # configs.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this access configuration.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An external IP address associated with this instance. Specify an unused static
        # external IP address available to the project or leave this field undefined to
        # use an IP from a shared ephemeral IP address pool. If you specify a static
        # external IP address, it must live in the same region as the zone of the
        # instance.
        # Corresponds to the JSON property `natIP`
        # @return [String]
        attr_accessor :nat_ip
      
        # The type of configuration. The default and only option is ONE_TO_ONE_NAT.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @nat_ip = args[:nat_ip] if args.key?(:nat_ip)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A reserved address resource.
      class Address
        include Google::Apis::Core::Hashable
      
        # The static external IP address represented by this resource.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#address for addresses.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] URL of the region where the regional address resides. This field
        # is not applicable to global addresses.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] The status of the address, which can be either IN_USE or
        # RESERVED. An address that is RESERVED is currently reserved and available to
        # use. An IN_USE address is currently being used by another resource and is not
        # available.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output Only] The URLs of the resources that are using this address.
        # Corresponds to the JSON property `users`
        # @return [Array<String>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @status = args[:status] if args.key?(:status)
          @users = args[:users] if args.key?(:users)
        end
      end
      
      # 
      class AddressAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A map of scoped address lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::AddressesScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#addressAggregatedList for
        # aggregated lists of addresses.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Contains a list of addresses.
      class AddressList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of addresses.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Address>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#addressList for lists of
        # addresses.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class AddressesScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] List of addresses contained in this scope.
        # Corresponds to the JSON property `addresses`
        # @return [Array<Google::Apis::ComputeV1::Address>]
        attr_accessor :addresses
      
        # [Output Only] Informational warning which replaces the list of addresses when
        # the list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::AddressesScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @addresses = args[:addresses] if args.key?(:addresses)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning which replaces the list of addresses when
        # the list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::AddressesScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # An instance-attached disk resource.
      class AttachedDisk
        include Google::Apis::Core::Hashable
      
        # Specifies whether the disk will be auto-deleted when the instance is deleted (
        # but not when the disk is detached from the instance).
        # Corresponds to the JSON property `autoDelete`
        # @return [Boolean]
        attr_accessor :auto_delete
        alias_method :auto_delete?, :auto_delete
      
        # Indicates that this is a boot disk. The virtual machine will use the first
        # partition of the disk for its root filesystem.
        # Corresponds to the JSON property `boot`
        # @return [Boolean]
        attr_accessor :boot
        alias_method :boot?, :boot
      
        # Specifies a unique device name of your choice that is reflected into the /dev/
        # disk/by-id/google-* tree of a Linux operating system running within the
        # instance. This name can be used to reference the device for mounting, resizing,
        # and so on, from within the instance.
        # If not specified, the server chooses a default device name to apply to this
        # disk, in the form persistent-disks-x, where x is a number assigned by Google
        # Compute Engine. This field is only applicable for persistent disks.
        # Corresponds to the JSON property `deviceName`
        # @return [String]
        attr_accessor :device_name
      
        # Assigns a zero-based index to this disk, where 0 is reserved for the boot disk.
        # For example, if you have many disks attached to an instance, each disk would
        # have a unique index number. If not specified, the server will choose an
        # appropriate value.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # [Input Only] Specifies the parameters for a new disk that will be created
        # alongside the new instance. Use initialization parameters to create boot disks
        # or local SSDs attached to the new instance.
        # This property is mutually exclusive with the source property; you can only
        # define one or the other, but not both.
        # Corresponds to the JSON property `initializeParams`
        # @return [Google::Apis::ComputeV1::AttachedDiskInitializeParams]
        attr_accessor :initialize_params
      
        # Specifies the disk interface to use for attaching this disk, which is either
        # SCSI or NVME. The default is SCSI. Persistent disks must always use SCSI and
        # the request will fail if you attempt to attach a persistent disk in any other
        # format than SCSI. Local SSDs can use either NVME or SCSI. For performance
        # characteristics of SCSI over NVMe, see Local SSD performance.
        # Corresponds to the JSON property `interface`
        # @return [String]
        attr_accessor :interface
      
        # [Output Only] Type of the resource. Always compute#attachedDisk for attached
        # disks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Any valid publicly visible licenses.
        # Corresponds to the JSON property `licenses`
        # @return [Array<String>]
        attr_accessor :licenses
      
        # The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not
        # specified, the default is to attach the disk in READ_WRITE mode.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Specifies a valid partial or full URL to an existing Persistent Disk resource.
        # This field is only applicable for persistent disks.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Specifies the type of the disk, either SCRATCH or PERSISTENT. If not specified,
        # the default is PERSISTENT.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_delete = args[:auto_delete] if args.key?(:auto_delete)
          @boot = args[:boot] if args.key?(:boot)
          @device_name = args[:device_name] if args.key?(:device_name)
          @index = args[:index] if args.key?(:index)
          @initialize_params = args[:initialize_params] if args.key?(:initialize_params)
          @interface = args[:interface] if args.key?(:interface)
          @kind = args[:kind] if args.key?(:kind)
          @licenses = args[:licenses] if args.key?(:licenses)
          @mode = args[:mode] if args.key?(:mode)
          @source = args[:source] if args.key?(:source)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # [Input Only] Specifies the parameters for a new disk that will be created
      # alongside the new instance. Use initialization parameters to create boot disks
      # or local SSDs attached to the new instance.
      # This property is mutually exclusive with the source property; you can only
      # define one or the other, but not both.
      class AttachedDiskInitializeParams
        include Google::Apis::Core::Hashable
      
        # Specifies the disk name. If not specified, the default is to use the name of
        # the instance.
        # Corresponds to the JSON property `diskName`
        # @return [String]
        attr_accessor :disk_name
      
        # Specifies the size of the disk in base-2 GB.
        # Corresponds to the JSON property `diskSizeGb`
        # @return [String]
        attr_accessor :disk_size_gb
      
        # Specifies the disk type to use to create the instance. If not specified, the
        # default is pd-standard, specified using the full URL. For example:
        # https://www.googleapis.com/compute/v1/projects/project/zones/zone/diskTypes/pd-
        # standard
        # Other values include pd-ssd and local-ssd. If you define this field, you can
        # provide either the full or partial URL. For example, the following are valid
        # values:
        # - https://www.googleapis.com/compute/v1/projects/project/zones/zone/diskTypes/
        # diskType
        # - projects/project/zones/zone/diskTypes/diskType
        # - zones/zone/diskTypes/diskType
        # Corresponds to the JSON property `diskType`
        # @return [String]
        attr_accessor :disk_type
      
        # The source image used to create this disk. If the source image is deleted,
        # this field will not be set.
        # To create a disk with one of the public operating system images, specify the
        # image by its family name. For example, specify family/debian-8 to use the
        # latest Debian 8 image:
        # projects/debian-cloud/global/images/family/debian-8
        # Alternatively, use a specific version of a public operating system image:
        # projects/debian-cloud/global/images/debian-8-jessie-vYYYYMMDD
        # To create a disk with a private image that you created, specify the image name
        # in the following format:
        # global/images/my-private-image
        # You can also specify a private image by its image family, which returns the
        # latest version of the image in that family. Replace the image name with family/
        # family-name:
        # global/images/family/my-private-family
        # Corresponds to the JSON property `sourceImage`
        # @return [String]
        attr_accessor :source_image
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_name = args[:disk_name] if args.key?(:disk_name)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @disk_type = args[:disk_type] if args.key?(:disk_type)
          @source_image = args[:source_image] if args.key?(:source_image)
        end
      end
      
      # Represents an Autoscaler resource. Autoscalers allow you to automatically
      # scale virtual machine instances in managed instance groups according to an
      # autoscaling policy that you define. For more information, read Autoscaling
      # Groups of Instances.
      class Autoscaler
        include Google::Apis::Core::Hashable
      
        # Cloud Autoscaler policy.
        # Corresponds to the JSON property `autoscalingPolicy`
        # @return [Google::Apis::ComputeV1::AutoscalingPolicy]
        attr_accessor :autoscaling_policy
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#autoscaler for autoscalers.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # URL of the managed instance group that this autoscaler will scale.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # [Output Only] URL of the zone where the instance group resides.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoscaling_policy = args[:autoscaling_policy] if args.key?(:autoscaling_policy)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @self_link = args[:self_link] if args.key?(:self_link)
          @target = args[:target] if args.key?(:target)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # 
      class AutoscalerAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A map of scoped autoscaler lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::AutoscalersScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#autoscalerAggregatedList for
        # aggregated lists of autoscalers.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Contains a list of Autoscaler resources.
      class AutoscalerList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of Autoscaler resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Autoscaler>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#autoscalerList for lists of
        # autoscalers.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class AutoscalersScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] List of autoscalers contained in this scope.
        # Corresponds to the JSON property `autoscalers`
        # @return [Array<Google::Apis::ComputeV1::Autoscaler>]
        attr_accessor :autoscalers
      
        # [Output Only] Informational warning which replaces the list of autoscalers
        # when the list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::AutoscalersScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoscalers = args[:autoscalers] if args.key?(:autoscalers)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning which replaces the list of autoscalers
        # when the list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::AutoscalersScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Cloud Autoscaler policy.
      class AutoscalingPolicy
        include Google::Apis::Core::Hashable
      
        # The number of seconds that the autoscaler should wait before it starts
        # collecting information from a new instance. This prevents the autoscaler from
        # collecting information when the instance is initializing, during which the
        # collected usage would not be reliable. The default time autoscaler waits is 60
        # seconds.
        # Virtual machine initialization times might vary because of numerous factors.
        # We recommend that you test how long an instance may take to initialize. To do
        # this, create an instance and time the startup process.
        # Corresponds to the JSON property `coolDownPeriodSec`
        # @return [Fixnum]
        attr_accessor :cool_down_period_sec
      
        # CPU utilization policy.
        # Corresponds to the JSON property `cpuUtilization`
        # @return [Google::Apis::ComputeV1::AutoscalingPolicyCpuUtilization]
        attr_accessor :cpu_utilization
      
        # Configuration parameters of autoscaling based on a custom metric.
        # Corresponds to the JSON property `customMetricUtilizations`
        # @return [Array<Google::Apis::ComputeV1::AutoscalingPolicyCustomMetricUtilization>]
        attr_accessor :custom_metric_utilizations
      
        # Configuration parameters of autoscaling based on load balancing.
        # Corresponds to the JSON property `loadBalancingUtilization`
        # @return [Google::Apis::ComputeV1::AutoscalingPolicyLoadBalancingUtilization]
        attr_accessor :load_balancing_utilization
      
        # The maximum number of instances that the autoscaler can scale up to. This is
        # required when creating or updating an autoscaler. The maximum number of
        # replicas should not be lower than minimal number of replicas.
        # Corresponds to the JSON property `maxNumReplicas`
        # @return [Fixnum]
        attr_accessor :max_num_replicas
      
        # The minimum number of replicas that the autoscaler can scale down to. This
        # cannot be less than 0. If not provided, autoscaler will choose a default value
        # depending on maximum number of instances allowed.
        # Corresponds to the JSON property `minNumReplicas`
        # @return [Fixnum]
        attr_accessor :min_num_replicas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cool_down_period_sec = args[:cool_down_period_sec] if args.key?(:cool_down_period_sec)
          @cpu_utilization = args[:cpu_utilization] if args.key?(:cpu_utilization)
          @custom_metric_utilizations = args[:custom_metric_utilizations] if args.key?(:custom_metric_utilizations)
          @load_balancing_utilization = args[:load_balancing_utilization] if args.key?(:load_balancing_utilization)
          @max_num_replicas = args[:max_num_replicas] if args.key?(:max_num_replicas)
          @min_num_replicas = args[:min_num_replicas] if args.key?(:min_num_replicas)
        end
      end
      
      # CPU utilization policy.
      class AutoscalingPolicyCpuUtilization
        include Google::Apis::Core::Hashable
      
        # The target CPU utilization that the autoscaler should maintain. Must be a
        # float value in the range (0, 1]. If not specified, the default is 0.8.
        # If the CPU level is below the target utilization, the autoscaler scales down
        # the number of instances until it reaches the minimum number of instances you
        # specified or until the average CPU of your instances reaches the target
        # utilization.
        # If the average CPU is above the target utilization, the autoscaler scales up
        # until it reaches the maximum number of instances you specified or until the
        # average utilization reaches the target utilization.
        # Corresponds to the JSON property `utilizationTarget`
        # @return [Float]
        attr_accessor :utilization_target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @utilization_target = args[:utilization_target] if args.key?(:utilization_target)
        end
      end
      
      # Custom utilization metric policy.
      class AutoscalingPolicyCustomMetricUtilization
        include Google::Apis::Core::Hashable
      
        # The identifier of the Cloud Monitoring metric. The metric cannot have negative
        # values and should be a utilization metric, which means that the number of
        # virtual machines handling requests should increase or decrease proportionally
        # to the metric. The metric must also have a label of compute.googleapis.com/
        # resource_id with the value of the instance's unique ID, although this alone
        # does not guarantee that the metric is valid.
        # For example, the following is a valid metric:
        # compute.googleapis.com/instance/network/received_bytes_count
        # The following is not a valid metric because it does not increase or decrease
        # based on usage:
        # compute.googleapis.com/instance/cpu/reserved_cores
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # Target value of the metric which autoscaler should maintain. Must be a
        # positive value.
        # Corresponds to the JSON property `utilizationTarget`
        # @return [Float]
        attr_accessor :utilization_target
      
        # Defines how target utilization value is expressed for a Cloud Monitoring
        # metric. Either GAUGE, DELTA_PER_SECOND, or DELTA_PER_MINUTE. If not specified,
        # the default is GAUGE.
        # Corresponds to the JSON property `utilizationTargetType`
        # @return [String]
        attr_accessor :utilization_target_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric = args[:metric] if args.key?(:metric)
          @utilization_target = args[:utilization_target] if args.key?(:utilization_target)
          @utilization_target_type = args[:utilization_target_type] if args.key?(:utilization_target_type)
        end
      end
      
      # Configuration parameters of autoscaling based on load balancing.
      class AutoscalingPolicyLoadBalancingUtilization
        include Google::Apis::Core::Hashable
      
        # Fraction of backend capacity utilization (set in HTTP(s) load balancing
        # configuration) that autoscaler should maintain. Must be a positive float value.
        # If not defined, the default is 0.8.
        # Corresponds to the JSON property `utilizationTarget`
        # @return [Float]
        attr_accessor :utilization_target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @utilization_target = args[:utilization_target] if args.key?(:utilization_target)
        end
      end
      
      # Message containing information of one individual backend.
      class Backend
        include Google::Apis::Core::Hashable
      
        # Specifies the balancing mode for this backend. For global HTTP(S) load
        # balancing, the default is UTILIZATION. Valid values are UTILIZATION and RATE.
        # Corresponds to the JSON property `balancingMode`
        # @return [String]
        attr_accessor :balancing_mode
      
        # A multiplier applied to the group's maximum servicing capacity (either
        # UTILIZATION or RATE). Default value is 1, which means the group will serve up
        # to 100% of its configured CPU or RPS (depending on balancingMode). A setting
        # of 0 means the group is completely drained, offering 0% of its available CPU
        # or RPS. Valid range is [0.0,1.0].
        # Corresponds to the JSON property `capacityScaler`
        # @return [Float]
        attr_accessor :capacity_scaler
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The fully-qualified URL of a zonal Instance Group resource. This instance
        # group defines the list of instances that serve traffic. Member virtual machine
        # instances from each instance group must live in the same zone as the instance
        # group itself. No two backends in a backend service are allowed to use same
        # Instance Group resource.
        # Note that you must specify an Instance Group resource using the fully-
        # qualified URL, rather than a partial URL.
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # The max requests per second (RPS) of the group. Can be used with either RATE
        # or UTILIZATION balancing modes, but required if RATE mode. For RATE mode,
        # either maxRate or maxRatePerInstance must be set.
        # Corresponds to the JSON property `maxRate`
        # @return [Fixnum]
        attr_accessor :max_rate
      
        # The max requests per second (RPS) that a single backend instance can handle.
        # This is used to calculate the capacity of the group. Can be used in either
        # balancing mode. For RATE mode, either maxRate or maxRatePerInstance must be
        # set.
        # Corresponds to the JSON property `maxRatePerInstance`
        # @return [Float]
        attr_accessor :max_rate_per_instance
      
        # Used when balancingMode is UTILIZATION. This ratio defines the CPU utilization
        # target for the group. The default is 0.8. Valid range is [0.0, 1.0].
        # Corresponds to the JSON property `maxUtilization`
        # @return [Float]
        attr_accessor :max_utilization
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @balancing_mode = args[:balancing_mode] if args.key?(:balancing_mode)
          @capacity_scaler = args[:capacity_scaler] if args.key?(:capacity_scaler)
          @description = args[:description] if args.key?(:description)
          @group = args[:group] if args.key?(:group)
          @max_rate = args[:max_rate] if args.key?(:max_rate)
          @max_rate_per_instance = args[:max_rate_per_instance] if args.key?(:max_rate_per_instance)
          @max_utilization = args[:max_utilization] if args.key?(:max_utilization)
        end
      end
      
      # A BackendService resource. This resource defines a group of backend virtual
      # machines and their serving capacity.
      class BackendService
        include Google::Apis::Core::Hashable
      
        # The list of backends that serve this BackendService.
        # Corresponds to the JSON property `backends`
        # @return [Array<Google::Apis::ComputeV1::Backend>]
        attr_accessor :backends
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Fingerprint of this resource. A hash of the contents stored in this object.
        # This field is used in optimistic locking. This field will be ignored when
        # inserting a BackendService. An up-to-date fingerprint must be provided in
        # order to update the BackendService.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # The list of URLs to the HttpHealthCheck or HttpsHealthCheck resource for
        # health checking this BackendService. Currently at most one health check can be
        # specified, and a health check is required.
        # Corresponds to the JSON property `healthChecks`
        # @return [Array<String>]
        attr_accessor :health_checks
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of resource. Always compute#backendService for backend
        # services.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Deprecated in favor of portName. The TCP port to connect on the backend. The
        # default value is 80.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Name of backend port. The same name should appear in the instance groups
        # referenced by this service. Required.
        # Corresponds to the JSON property `portName`
        # @return [String]
        attr_accessor :port_name
      
        # The protocol this BackendService uses to communicate with backends.
        # Possible values are HTTP, HTTPS, HTTP2, TCP and SSL.
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # [Output Only] URL of the region where the regional backend service resides.
        # This field is not applicable to global backend services.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # How many seconds to wait for the backend before considering it a failed
        # request. Default is 30 seconds.
        # Corresponds to the JSON property `timeoutSec`
        # @return [Fixnum]
        attr_accessor :timeout_sec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backends = args[:backends] if args.key?(:backends)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @health_checks = args[:health_checks] if args.key?(:health_checks)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @port = args[:port] if args.key?(:port)
          @port_name = args[:port_name] if args.key?(:port_name)
          @protocol = args[:protocol] if args.key?(:protocol)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @timeout_sec = args[:timeout_sec] if args.key?(:timeout_sec)
        end
      end
      
      # 
      class BackendServiceGroupHealth
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `healthStatus`
        # @return [Array<Google::Apis::ComputeV1::HealthStatus>]
        attr_accessor :health_status
      
        # [Output Only] Type of resource. Always compute#backendServiceGroupHealth for
        # the health of backend services.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_status = args[:health_status] if args.key?(:health_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # Contains a list of BackendService resources.
      class BackendServiceList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of BackendService resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::BackendService>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#backendServiceList for lists of
        # backend services.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Deprecation status for a public resource.
      class DeprecationStatus
        include Google::Apis::Core::Hashable
      
        # An optional RFC3339 timestamp on or after which the deprecation state of this
        # resource will be changed to DELETED.
        # Corresponds to the JSON property `deleted`
        # @return [String]
        attr_accessor :deleted
      
        # An optional RFC3339 timestamp on or after which the deprecation state of this
        # resource will be changed to DEPRECATED.
        # Corresponds to the JSON property `deprecated`
        # @return [String]
        attr_accessor :deprecated
      
        # An optional RFC3339 timestamp on or after which the deprecation state of this
        # resource will be changed to OBSOLETE.
        # Corresponds to the JSON property `obsolete`
        # @return [String]
        attr_accessor :obsolete
      
        # The URL of the suggested replacement for a deprecated resource. The suggested
        # replacement resource must be the same kind of resource as the deprecated
        # resource.
        # Corresponds to the JSON property `replacement`
        # @return [String]
        attr_accessor :replacement
      
        # The deprecation state of this resource. This can be DEPRECATED, OBSOLETE, or
        # DELETED. Operations which create a new resource using a DEPRECATED resource
        # will return successfully, but with a warning indicating the deprecated
        # resource and recommending its replacement. Operations which use OBSOLETE or
        # DELETED resources will be rejected and result in an error.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deleted = args[:deleted] if args.key?(:deleted)
          @deprecated = args[:deprecated] if args.key?(:deprecated)
          @obsolete = args[:obsolete] if args.key?(:obsolete)
          @replacement = args[:replacement] if args.key?(:replacement)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A Disk resource.
      class Disk
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#disk for disks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Last attach timestamp in RFC3339 text format.
        # Corresponds to the JSON property `lastAttachTimestamp`
        # @return [String]
        attr_accessor :last_attach_timestamp
      
        # [Output Only] Last detach timestamp in RFC3339 text format.
        # Corresponds to the JSON property `lastDetachTimestamp`
        # @return [String]
        attr_accessor :last_detach_timestamp
      
        # [Output Only] Any applicable publicly visible licenses.
        # Corresponds to the JSON property `licenses`
        # @return [Array<String>]
        attr_accessor :licenses
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Internal use only.
        # Corresponds to the JSON property `options`
        # @return [String]
        attr_accessor :options
      
        # [Output Only] Server-defined fully-qualified URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Size of the persistent disk, specified in GB. You can specify this field when
        # creating a persistent disk using the sourceImage or sourceSnapshot parameter,
        # or specify it alone to create an empty persistent disk.
        # If you specify this field along with sourceImage or sourceSnapshot, the value
        # of sizeGb must not be less than the size of the sourceImage or the size of the
        # snapshot.
        # Corresponds to the JSON property `sizeGb`
        # @return [String]
        attr_accessor :size_gb
      
        # The source image used to create this disk. If the source image is deleted,
        # this field will not be set.
        # To create a disk with one of the public operating system images, specify the
        # image by its family name. For example, specify family/debian-8 to use the
        # latest Debian 8 image:
        # projects/debian-cloud/global/images/family/debian-8
        # Alternatively, use a specific version of a public operating system image:
        # projects/debian-cloud/global/images/debian-8-jessie-vYYYYMMDD
        # To create a disk with a private image that you created, specify the image name
        # in the following format:
        # global/images/my-private-image
        # You can also specify a private image by its image family, which returns the
        # latest version of the image in that family. Replace the image name with family/
        # family-name:
        # global/images/family/my-private-family
        # Corresponds to the JSON property `sourceImage`
        # @return [String]
        attr_accessor :source_image
      
        # [Output Only] The ID value of the image used to create this disk. This value
        # identifies the exact image that was used to create this persistent disk. For
        # example, if you created the persistent disk from an image that was later
        # deleted and recreated under the same name, the source image ID would identify
        # the exact version of the image that was used.
        # Corresponds to the JSON property `sourceImageId`
        # @return [String]
        attr_accessor :source_image_id
      
        # The source snapshot used to create this disk. You can provide this as a
        # partial or full URL to the resource. For example, the following are valid
        # values:
        # - https://www.googleapis.com/compute/v1/projects/project/global/snapshots/
        # snapshot
        # - projects/project/global/snapshots/snapshot
        # - global/snapshots/snapshot
        # Corresponds to the JSON property `sourceSnapshot`
        # @return [String]
        attr_accessor :source_snapshot
      
        # [Output Only] The unique ID of the snapshot used to create this disk. This
        # value identifies the exact snapshot that was used to create this persistent
        # disk. For example, if you created the persistent disk from a snapshot that was
        # later deleted and recreated under the same name, the source snapshot ID would
        # identify the exact version of the snapshot that was used.
        # Corresponds to the JSON property `sourceSnapshotId`
        # @return [String]
        attr_accessor :source_snapshot_id
      
        # [Output Only] The status of disk creation. Applicable statuses includes:
        # CREATING, FAILED, READY, RESTORING.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # URL of the disk type resource describing which disk type to use to create the
        # disk. Provide this when creating the disk.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # [Output Only] Links to the users of the disk (attached instances) in form:
        # project/zones/zone/instances/instance
        # Corresponds to the JSON property `users`
        # @return [Array<String>]
        attr_accessor :users
      
        # [Output Only] URL of the zone where the disk resides.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @last_attach_timestamp = args[:last_attach_timestamp] if args.key?(:last_attach_timestamp)
          @last_detach_timestamp = args[:last_detach_timestamp] if args.key?(:last_detach_timestamp)
          @licenses = args[:licenses] if args.key?(:licenses)
          @name = args[:name] if args.key?(:name)
          @options = args[:options] if args.key?(:options)
          @self_link = args[:self_link] if args.key?(:self_link)
          @size_gb = args[:size_gb] if args.key?(:size_gb)
          @source_image = args[:source_image] if args.key?(:source_image)
          @source_image_id = args[:source_image_id] if args.key?(:source_image_id)
          @source_snapshot = args[:source_snapshot] if args.key?(:source_snapshot)
          @source_snapshot_id = args[:source_snapshot_id] if args.key?(:source_snapshot_id)
          @status = args[:status] if args.key?(:status)
          @type = args[:type] if args.key?(:type)
          @users = args[:users] if args.key?(:users)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # 
      class DiskAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A map of scoped disk lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::DisksScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#diskAggregatedList for
        # aggregated lists of persistent disks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A list of Disk resources.
      class DiskList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of persistent disks.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Disk>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#diskList for lists of disks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class MoveDiskRequest
        include Google::Apis::Core::Hashable
      
        # The URL of the destination zone to move the disk. This can be a full or
        # partial URL. For example, the following are all valid URLs to a zone:
        # - https://www.googleapis.com/compute/v1/projects/project/zones/zone
        # - projects/project/zones/zone
        # - zones/zone
        # Corresponds to the JSON property `destinationZone`
        # @return [String]
        attr_accessor :destination_zone
      
        # The URL of the target disk to move. This can be a full or partial URL. For
        # example, the following are all valid URLs to a disk:
        # - https://www.googleapis.com/compute/v1/projects/project/zones/zone/disks/disk
        # - projects/project/zones/zone/disks/disk
        # - zones/zone/disks/disk
        # Corresponds to the JSON property `targetDisk`
        # @return [String]
        attr_accessor :target_disk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_zone = args[:destination_zone] if args.key?(:destination_zone)
          @target_disk = args[:target_disk] if args.key?(:target_disk)
        end
      end
      
      # A DiskType resource.
      class DiskType
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # [Output Only] Server-defined default disk size in GB.
        # Corresponds to the JSON property `defaultDiskSizeGb`
        # @return [String]
        attr_accessor :default_disk_size_gb
      
        # Deprecation status for a public resource.
        # Corresponds to the JSON property `deprecated`
        # @return [Google::Apis::ComputeV1::DeprecationStatus]
        attr_accessor :deprecated
      
        # [Output Only] An optional description of this resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#diskType for disk types.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] An optional textual description of the valid disk size, such as "
        # 10GB-10TB".
        # Corresponds to the JSON property `validDiskSize`
        # @return [String]
        attr_accessor :valid_disk_size
      
        # [Output Only] URL of the zone where the disk type resides.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @default_disk_size_gb = args[:default_disk_size_gb] if args.key?(:default_disk_size_gb)
          @deprecated = args[:deprecated] if args.key?(:deprecated)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @self_link = args[:self_link] if args.key?(:self_link)
          @valid_disk_size = args[:valid_disk_size] if args.key?(:valid_disk_size)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # 
      class DiskTypeAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A map of scoped disk type lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::DiskTypesScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#diskTypeAggregatedList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Contains a list of disk types.
      class DiskTypeList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of Disk Type resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::DiskType>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#diskTypeList for disk types.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class DiskTypesScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] List of disk types contained in this scope.
        # Corresponds to the JSON property `diskTypes`
        # @return [Array<Google::Apis::ComputeV1::DiskType>]
        attr_accessor :disk_types
      
        # [Output Only] Informational warning which replaces the list of disk types when
        # the list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::DiskTypesScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_types = args[:disk_types] if args.key?(:disk_types)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning which replaces the list of disk types when
        # the list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::DiskTypesScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class DisksResizeRequest
        include Google::Apis::Core::Hashable
      
        # The new size of the persistent disk, which is specified in GB.
        # Corresponds to the JSON property `sizeGb`
        # @return [String]
        attr_accessor :size_gb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @size_gb = args[:size_gb] if args.key?(:size_gb)
        end
      end
      
      # 
      class DisksScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] List of disks contained in this scope.
        # Corresponds to the JSON property `disks`
        # @return [Array<Google::Apis::ComputeV1::Disk>]
        attr_accessor :disks
      
        # [Output Only] Informational warning which replaces the list of disks when the
        # list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::DisksScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disks = args[:disks] if args.key?(:disks)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning which replaces the list of disks when the
        # list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::DisksScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Represents a Firewall resource.
      class Firewall
        include Google::Apis::Core::Hashable
      
        # The list of rules specified by this firewall. Each rule specifies a protocol
        # and port-range tuple that describes a permitted connection.
        # Corresponds to the JSON property `allowed`
        # @return [Array<Google::Apis::ComputeV1::Firewall::Allowed>]
        attr_accessor :allowed
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Ony] Type of the resource. Always compute#firewall for firewall rules.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # URL of the network resource for this firewall rule. If not specified when
        # creating a firewall rule, the default network is used:
        # global/networks/default
        # If you choose to specify this property, you can specify the network as a full
        # or partial URL. For example, the following are all valid URLs:
        # - https://www.googleapis.com/compute/v1/projects/myproject/global/networks/my-
        # network
        # - projects/myproject/global/networks/my-network
        # - global/networks/default
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The IP address blocks that this rule applies to, expressed in CIDR format. One
        # or both of sourceRanges and sourceTags may be set.
        # If both properties are set, an inbound connection is allowed if the range
        # matches the sourceRanges OR the tag of the source matches the sourceTags
        # property. The connection does not need to match both properties.
        # Corresponds to the JSON property `sourceRanges`
        # @return [Array<String>]
        attr_accessor :source_ranges
      
        # A list of instance tags which this rule applies to. One or both of
        # sourceRanges and sourceTags may be set.
        # If both properties are set, an inbound connection is allowed if the range
        # matches the sourceRanges OR the tag of the source matches the sourceTags
        # property. The connection does not need to match both properties.
        # Source tags cannot be used to allow access to an instance's external IP
        # address. Because tags are associated with an instance, not an IP address,
        # source tags can only be used to control traffic traveling from an instance
        # inside the same network as the firewall.
        # Corresponds to the JSON property `sourceTags`
        # @return [Array<String>]
        attr_accessor :source_tags
      
        # A list of instance tags indicating sets of instances located in the network
        # that may make network connections as specified in allowed[]. If no targetTags
        # are specified, the firewall rule applies to all instances on the specified
        # network.
        # Corresponds to the JSON property `targetTags`
        # @return [Array<String>]
        attr_accessor :target_tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed = args[:allowed] if args.key?(:allowed)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @self_link = args[:self_link] if args.key?(:self_link)
          @source_ranges = args[:source_ranges] if args.key?(:source_ranges)
          @source_tags = args[:source_tags] if args.key?(:source_tags)
          @target_tags = args[:target_tags] if args.key?(:target_tags)
        end
        
        # 
        class Allowed
          include Google::Apis::Core::Hashable
        
          # The IP protocol that is allowed for this rule. The protocol type is required
          # when creating a firewall rule. This value can either be one of the following
          # well known protocol strings (tcp, udp, icmp, esp, ah, sctp), or the IP
          # protocol number.
          # Corresponds to the JSON property `IPProtocol`
          # @return [String]
          attr_accessor :ip_protocol
        
          # An optional list of ports which are allowed. This field is only applicable for
          # UDP or TCP protocol. Each entry must be either an integer or a range. If not
          # specified, connections through any port are allowed
          # Example inputs include: ["22"], ["80","443"], and ["12345-12349"].
          # Corresponds to the JSON property `ports`
          # @return [Array<String>]
          attr_accessor :ports
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @ip_protocol = args[:ip_protocol] if args.key?(:ip_protocol)
            @ports = args[:ports] if args.key?(:ports)
          end
        end
      end
      
      # Contains a list of firewalls.
      class FirewallList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of Firewall resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Firewall>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#firewallList for lists of
        # firewalls.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A ForwardingRule resource. A ForwardingRule resource specifies which pool of
      # target virtual machines to forward a packet to if it matches the given [
      # IPAddress, IPProtocol, portRange] tuple.
      class ForwardingRule
        include Google::Apis::Core::Hashable
      
        # Value of the reserved IP address that this forwarding rule is serving on
        # behalf of. For global forwarding rules, the address must be a global IP; for
        # regional forwarding rules, the address must live in the same region as the
        # forwarding rule. If left empty (default value), an ephemeral IP from the same
        # scope (global or regional) will be assigned.
        # Corresponds to the JSON property `IPAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # The IP protocol to which this rule applies. Valid options are TCP, UDP, ESP,
        # AH, SCTP or ICMP.
        # Corresponds to the JSON property `IPProtocol`
        # @return [String]
        attr_accessor :ip_protocol
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#forwardingRule for
        # Forwarding Rule resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Applicable only when IPProtocol is TCP, UDP, or SCTP, only packets addressed
        # to ports in the specified range will be forwarded to target. Forwarding rules
        # with the same [IPAddress, IPProtocol] pair must have disjoint port ranges.
        # Corresponds to the JSON property `portRange`
        # @return [String]
        attr_accessor :port_range
      
        # [Output Only] URL of the region where the regional forwarding rule resides.
        # This field is not applicable to global forwarding rules.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The URL of the target resource to receive the matched traffic. For regional
        # forwarding rules, this target must live in the same region as the forwarding
        # rule. For global forwarding rules, this target must be a global
        # TargetHttpProxy or TargetHttpsProxy resource. The forwarded traffic must be of
        # a type appropriate to the target object. For example, TargetHttpProxy requires
        # HTTP traffic, and TargetHttpsProxy requires HTTPS traffic.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @ip_protocol = args[:ip_protocol] if args.key?(:ip_protocol)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @port_range = args[:port_range] if args.key?(:port_range)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # 
      class ForwardingRuleAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A map of scoped forwarding rule lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::ForwardingRulesScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#forwardingRuleAggregatedList
        # for lists of forwarding rules.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Contains a list of ForwardingRule resources.
      class ForwardingRuleList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource. Set by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of ForwardingRule resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::ForwardingRule>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class ForwardingRulesScopedList
        include Google::Apis::Core::Hashable
      
        # List of forwarding rules contained in this scope.
        # Corresponds to the JSON property `forwardingRules`
        # @return [Array<Google::Apis::ComputeV1::ForwardingRule>]
        attr_accessor :forwarding_rules
      
        # Informational warning which replaces the list of forwarding rules when the
        # list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::ForwardingRulesScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @forwarding_rules = args[:forwarding_rules] if args.key?(:forwarding_rules)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # Informational warning which replaces the list of forwarding rules when the
        # list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::ForwardingRulesScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # A full or valid partial URL to a health check. For example, the following are
      # valid URLs:
      # - https://www.googleapis.com/compute/beta/projects/project-id/global/
      # httpHealthChecks/health-check
      # - projects/project-id/global/httpHealthChecks/health-check
      # - global/httpHealthChecks/health-check
      class HealthCheckReference
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `healthCheck`
        # @return [String]
        attr_accessor :health_check
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_check = args[:health_check] if args.key?(:health_check)
        end
      end
      
      # 
      class HealthStatus
        include Google::Apis::Core::Hashable
      
        # Health state of the instance.
        # Corresponds to the JSON property `healthState`
        # @return [String]
        attr_accessor :health_state
      
        # URL of the instance resource.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # The IP address represented by this resource.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # The port on the instance.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_state = args[:health_state] if args.key?(:health_state)
          @instance = args[:instance] if args.key?(:instance)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @port = args[:port] if args.key?(:port)
        end
      end
      
      # UrlMaps A host-matching rule for a URL. If matched, will use the named
      # PathMatcher to select the BackendService.
      class HostRule
        include Google::Apis::Core::Hashable
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The list of host patterns to match. They must be valid hostnames, except *
        # will match any string of ([a-z0-9-.]*). In that case, * must be the first
        # character and must be followed in the pattern by either - or ..
        # Corresponds to the JSON property `hosts`
        # @return [Array<String>]
        attr_accessor :hosts
      
        # The name of the PathMatcher to use to match the path portion of the URL if the
        # hostRule matches the URL's host portion.
        # Corresponds to the JSON property `pathMatcher`
        # @return [String]
        attr_accessor :path_matcher
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @hosts = args[:hosts] if args.key?(:hosts)
          @path_matcher = args[:path_matcher] if args.key?(:path_matcher)
        end
      end
      
      # An HttpHealthCheck resource. This resource defines a template for how
      # individual instances should be checked for health, via HTTP.
      class HttpHealthCheck
        include Google::Apis::Core::Hashable
      
        # How often (in seconds) to send a health check. The default value is 5 seconds.
        # Corresponds to the JSON property `checkIntervalSec`
        # @return [Fixnum]
        attr_accessor :check_interval_sec
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A so-far unhealthy instance will be marked healthy after this many consecutive
        # successes. The default value is 2.
        # Corresponds to the JSON property `healthyThreshold`
        # @return [Fixnum]
        attr_accessor :healthy_threshold
      
        # The value of the host header in the HTTP health check request. If left empty (
        # default value), the public IP on behalf of which this health check is
        # performed will be used.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#httpHealthCheck for HTTP
        # health checks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The TCP port number for the HTTP health check request. The default value is 80.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # The request path of the HTTP health check request. The default value is /.
        # Corresponds to the JSON property `requestPath`
        # @return [String]
        attr_accessor :request_path
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # How long (in seconds) to wait before claiming failure. The default value is 5
        # seconds. It is invalid for timeoutSec to have greater value than
        # checkIntervalSec.
        # Corresponds to the JSON property `timeoutSec`
        # @return [Fixnum]
        attr_accessor :timeout_sec
      
        # A so-far healthy instance will be marked unhealthy after this many consecutive
        # failures. The default value is 2.
        # Corresponds to the JSON property `unhealthyThreshold`
        # @return [Fixnum]
        attr_accessor :unhealthy_threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @check_interval_sec = args[:check_interval_sec] if args.key?(:check_interval_sec)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @healthy_threshold = args[:healthy_threshold] if args.key?(:healthy_threshold)
          @host = args[:host] if args.key?(:host)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @port = args[:port] if args.key?(:port)
          @request_path = args[:request_path] if args.key?(:request_path)
          @self_link = args[:self_link] if args.key?(:self_link)
          @timeout_sec = args[:timeout_sec] if args.key?(:timeout_sec)
          @unhealthy_threshold = args[:unhealthy_threshold] if args.key?(:unhealthy_threshold)
        end
      end
      
      # Contains a list of HttpHealthCheck resources.
      class HttpHealthCheckList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource. Defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of HttpHealthCheck resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::HttpHealthCheck>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # An HttpsHealthCheck resource. This resource defines a template for how
      # individual instances should be checked for health, via HTTPS.
      class HttpsHealthCheck
        include Google::Apis::Core::Hashable
      
        # How often (in seconds) to send a health check. The default value is 5 seconds.
        # Corresponds to the JSON property `checkIntervalSec`
        # @return [Fixnum]
        attr_accessor :check_interval_sec
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A so-far unhealthy instance will be marked healthy after this many consecutive
        # successes. The default value is 2.
        # Corresponds to the JSON property `healthyThreshold`
        # @return [Fixnum]
        attr_accessor :healthy_threshold
      
        # The value of the host header in the HTTPS health check request. If left empty (
        # default value), the public IP on behalf of which this health check is
        # performed will be used.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The TCP port number for the HTTPS health check request. The default value is
        # 443.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # The request path of the HTTPS health check request. The default value is "/".
        # Corresponds to the JSON property `requestPath`
        # @return [String]
        attr_accessor :request_path
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # How long (in seconds) to wait before claiming failure. The default value is 5
        # seconds. It is invalid for timeoutSec to have a greater value than
        # checkIntervalSec.
        # Corresponds to the JSON property `timeoutSec`
        # @return [Fixnum]
        attr_accessor :timeout_sec
      
        # A so-far healthy instance will be marked unhealthy after this many consecutive
        # failures. The default value is 2.
        # Corresponds to the JSON property `unhealthyThreshold`
        # @return [Fixnum]
        attr_accessor :unhealthy_threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @check_interval_sec = args[:check_interval_sec] if args.key?(:check_interval_sec)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @healthy_threshold = args[:healthy_threshold] if args.key?(:healthy_threshold)
          @host = args[:host] if args.key?(:host)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @port = args[:port] if args.key?(:port)
          @request_path = args[:request_path] if args.key?(:request_path)
          @self_link = args[:self_link] if args.key?(:self_link)
          @timeout_sec = args[:timeout_sec] if args.key?(:timeout_sec)
          @unhealthy_threshold = args[:unhealthy_threshold] if args.key?(:unhealthy_threshold)
        end
      end
      
      # Contains a list of HttpsHealthCheck resources.
      class HttpsHealthCheckList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of HttpsHealthCheck resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::HttpsHealthCheck>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # An Image resource.
      class Image
        include Google::Apis::Core::Hashable
      
        # Size of the image tar.gz archive stored in Google Cloud Storage (in bytes).
        # Corresponds to the JSON property `archiveSizeBytes`
        # @return [String]
        attr_accessor :archive_size_bytes
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # Deprecation status for a public resource.
        # Corresponds to the JSON property `deprecated`
        # @return [Google::Apis::ComputeV1::DeprecationStatus]
        attr_accessor :deprecated
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Size of the image when restored onto a persistent disk (in GB).
        # Corresponds to the JSON property `diskSizeGb`
        # @return [String]
        attr_accessor :disk_size_gb
      
        # The name of the image family to which this image belongs. You can create disks
        # by specifying an image family instead of a specific image name. The image
        # family always returns its latest image that is not deprecated.
        # Corresponds to the JSON property `family`
        # @return [String]
        attr_accessor :family
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#image for images.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Any applicable publicly visible licenses.
        # Corresponds to the JSON property `licenses`
        # @return [Array<String>]
        attr_accessor :licenses
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The parameters of the raw disk image.
        # Corresponds to the JSON property `rawDisk`
        # @return [Google::Apis::ComputeV1::Image::RawDisk]
        attr_accessor :raw_disk
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # URL of the The source disk used to create this image. This can be a full or
        # valid partial URL. You must provide either this property or the rawDisk.source
        # property but not both to create an image. For example, the following are valid
        # values:
        # - https://www.googleapis.com/compute/v1/projects/project/zones/zone/disk/disk
        # - projects/project/zones/zone/disk/disk
        # - zones/zone/disks/disk
        # Corresponds to the JSON property `sourceDisk`
        # @return [String]
        attr_accessor :source_disk
      
        # The ID value of the disk used to create this image. This value may be used to
        # determine whether the image was taken from the current or a previous instance
        # of a given disk name.
        # Corresponds to the JSON property `sourceDiskId`
        # @return [String]
        attr_accessor :source_disk_id
      
        # The type of the image used to create this disk. The default and only value is
        # RAW
        # Corresponds to the JSON property `sourceType`
        # @return [String]
        attr_accessor :source_type
      
        # [Output Only] The status of the image. An image can be used to create other
        # resources, such as instances, only after the image has been successfully
        # created and the status is set to READY. Possible values are FAILED, PENDING,
        # or READY.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archive_size_bytes = args[:archive_size_bytes] if args.key?(:archive_size_bytes)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @deprecated = args[:deprecated] if args.key?(:deprecated)
          @description = args[:description] if args.key?(:description)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @family = args[:family] if args.key?(:family)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @licenses = args[:licenses] if args.key?(:licenses)
          @name = args[:name] if args.key?(:name)
          @raw_disk = args[:raw_disk] if args.key?(:raw_disk)
          @self_link = args[:self_link] if args.key?(:self_link)
          @source_disk = args[:source_disk] if args.key?(:source_disk)
          @source_disk_id = args[:source_disk_id] if args.key?(:source_disk_id)
          @source_type = args[:source_type] if args.key?(:source_type)
          @status = args[:status] if args.key?(:status)
        end
        
        # The parameters of the raw disk image.
        class RawDisk
          include Google::Apis::Core::Hashable
        
          # The format used to encode and transmit the block device, which should be TAR.
          # This is just a container and transmission format and not a runtime format.
          # Provided by the client when the disk image is created.
          # Corresponds to the JSON property `containerType`
          # @return [String]
          attr_accessor :container_type
        
          # An optional SHA1 checksum of the disk image before unpackaging; provided by
          # the client when the disk image is created.
          # Corresponds to the JSON property `sha1Checksum`
          # @return [String]
          attr_accessor :sha1_checksum
        
          # The full Google Cloud Storage URL where the disk image is stored. You must
          # provide either this property or the sourceDisk property but not both.
          # Corresponds to the JSON property `source`
          # @return [String]
          attr_accessor :source
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @container_type = args[:container_type] if args.key?(:container_type)
            @sha1_checksum = args[:sha1_checksum] if args.key?(:sha1_checksum)
            @source = args[:source] if args.key?(:source)
          end
        end
      end
      
      # Contains a list of images.
      class ImageList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of Image resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Image>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # An Instance resource.
      class Instance
        include Google::Apis::Core::Hashable
      
        # Allows this instance to send and receive packets with non-matching destination
        # or source IPs. This is required if you plan to use this instance to forward
        # routes. For more information, see Enabling IP Forwarding.
        # Corresponds to the JSON property `canIpForward`
        # @return [Boolean]
        attr_accessor :can_ip_forward
        alias_method :can_ip_forward?, :can_ip_forward
      
        # [Output Only] The CPU platform used by this instance.
        # Corresponds to the JSON property `cpuPlatform`
        # @return [String]
        attr_accessor :cpu_platform
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Array of disks associated with this instance. Persistent disks must be created
        # before you can assign them.
        # Corresponds to the JSON property `disks`
        # @return [Array<Google::Apis::ComputeV1::AttachedDisk>]
        attr_accessor :disks
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#instance for instances.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Full or partial URL of the machine type resource to use for this instance, in
        # the format: zones/zone/machineTypes/machine-type. This is provided by the
        # client when the instance is created. For example, the following is a valid
        # partial url to a predefined machine type:
        # zones/us-central1-f/machineTypes/n1-standard-1
        # To create a custom machine type, provide a URL to a machine type in the
        # following format, where CPUS is 1 or an even number up to 32 (2, 4, 6, ... 24,
        # etc), and MEMORY is the total memory for this instance. Memory must be a
        # multiple of 256 MB and must be supplied in MB (e.g. 5 GB of memory is 5120 MB):
        # zones/zone/machineTypes/custom-CPUS-MEMORY
        # For example: zones/us-central1-f/machineTypes/custom-4-5120
        # For a full list of restrictions, read the Specifications for custom machine
        # types.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # A metadata key/value entry.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ComputeV1::Metadata]
        attr_accessor :metadata
      
        # The name of the resource, provided by the client when initially creating the
        # resource. The resource name must be 1-63 characters long, and comply with
        # RFC1035. Specifically, the name must be 1-63 characters long and match the
        # regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character
        # must be a lowercase letter, and all following characters must be a dash,
        # lowercase letter, or digit, except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An array of configurations for this interface. This specifies how this
        # interface is configured to interact with other network services, such as
        # connecting to the internet.
        # Corresponds to the JSON property `networkInterfaces`
        # @return [Array<Google::Apis::ComputeV1::NetworkInterface>]
        attr_accessor :network_interfaces
      
        # Sets the scheduling options for an Instance.
        # Corresponds to the JSON property `scheduling`
        # @return [Google::Apis::ComputeV1::Scheduling]
        attr_accessor :scheduling
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # A list of service accounts, with their specified scopes, authorized for this
        # instance. Service accounts generate access tokens that can be accessed through
        # the metadata server and used to authenticate applications on the instance. See
        # Authenticating from Google Compute Engine for more information.
        # Corresponds to the JSON property `serviceAccounts`
        # @return [Array<Google::Apis::ComputeV1::ServiceAccount>]
        attr_accessor :service_accounts
      
        # [Output Only] The status of the instance. One of the following values:
        # PROVISIONING, STAGING, RUNNING, STOPPING, and TERMINATED.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output Only] An optional, human-readable explanation of the status.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # A set of instance tags.
        # Corresponds to the JSON property `tags`
        # @return [Google::Apis::ComputeV1::Tags]
        attr_accessor :tags
      
        # [Output Only] URL of the zone where the instance resides.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_ip_forward = args[:can_ip_forward] if args.key?(:can_ip_forward)
          @cpu_platform = args[:cpu_platform] if args.key?(:cpu_platform)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @disks = args[:disks] if args.key?(:disks)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @network_interfaces = args[:network_interfaces] if args.key?(:network_interfaces)
          @scheduling = args[:scheduling] if args.key?(:scheduling)
          @self_link = args[:self_link] if args.key?(:self_link)
          @service_accounts = args[:service_accounts] if args.key?(:service_accounts)
          @status = args[:status] if args.key?(:status)
          @status_message = args[:status_message] if args.key?(:status_message)
          @tags = args[:tags] if args.key?(:tags)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # 
      class InstanceAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A map of scoped instance lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::InstancesScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#instanceAggregatedList for
        # aggregated lists of Instance resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class InstanceGroup
        include Google::Apis::Core::Hashable
      
        # [Output Only] The creation timestamp for this instance group in RFC3339 text
        # format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The fingerprint of the named ports. The system uses this
        # fingerprint to detect conflicts when multiple users change the named ports
        # concurrently.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # [Output Only] A unique identifier for this resource type. The server generates
        # this identifier.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] The resource type, which is always compute#instanceGroup for
        # instance groups.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the instance group. The name must be 1-63 characters long, and
        # comply with RFC1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Assigns a name to a port number. For example: `name: "http", port: 80`
        # This allows the system to reference ports by the assigned name instead of a
        # port number. Named ports can also contain multiple ports. For example: [`name:
        # "http", port: 80`,`name: "http", port: 8080`]
        # Named ports apply to all instances in this instance group.
        # Corresponds to the JSON property `namedPorts`
        # @return [Array<Google::Apis::ComputeV1::NamedPort>]
        attr_accessor :named_ports
      
        # The URL of the network to which all instances in the instance group belong.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # [Output Only] The URL for this instance group. The server generates this URL.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] The total number of instances in the instance group.
        # Corresponds to the JSON property `size`
        # @return [Fixnum]
        attr_accessor :size
      
        # The URL of the subnetwork to which all instances in the instance group belong.
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        # [Output Only] The URL of the zone where the instance group is located.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @named_ports = args[:named_ports] if args.key?(:named_ports)
          @network = args[:network] if args.key?(:network)
          @self_link = args[:self_link] if args.key?(:self_link)
          @size = args[:size] if args.key?(:size)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # 
      class InstanceGroupAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] A unique identifier for this aggregated list of instance groups.
        # The server generates this identifier.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A map of scoped instance group lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::InstanceGroupsScopedList>]
        attr_accessor :items
      
        # [Output Only] The resource type, which is always compute#
        # instanceGroupAggregatedList for aggregated lists of instance groups.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] The URL for this resource type. The server generates this URL.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A list of InstanceGroup resources.
      class InstanceGroupList
        include Google::Apis::Core::Hashable
      
        # [Output Only] A unique identifier for this list of instance groups. The server
        # generates this identifier.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of instance groups.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::InstanceGroup>]
        attr_accessor :items
      
        # [Output Only] The resource type, which is always compute#instanceGroupList for
        # instance group lists.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] The URL for this resource type. The server generates this URL.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class InstanceGroupManager
        include Google::Apis::Core::Hashable
      
        # The base instance name to use for instances in this group. The value must be 1-
        # 58 characters long. Instances are named by appending a hyphen and a random
        # four-character string to the base instance name. The base instance name must
        # comply with RFC1035.
        # Corresponds to the JSON property `baseInstanceName`
        # @return [String]
        attr_accessor :base_instance_name
      
        # [Output Only] The creation timestamp for this managed instance group in
        # RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # [Output Only] The list of instance actions and the number of instances in this
        # managed instance group that are scheduled for each of those actions.
        # Corresponds to the JSON property `currentActions`
        # @return [Google::Apis::ComputeV1::InstanceGroupManagerActionsSummary]
        attr_accessor :current_actions
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The fingerprint of the resource data. You can use this optional
        # field for optimistic locking when you update the resource.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # [Output Only] A unique identifier for this resource type. The server generates
        # this identifier.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] The URL of the Instance Group resource.
        # Corresponds to the JSON property `instanceGroup`
        # @return [String]
        attr_accessor :instance_group
      
        # The URL of the instance template that is specified for this managed instance
        # group. The group uses this template to create all new instances in the managed
        # instance group.
        # Corresponds to the JSON property `instanceTemplate`
        # @return [String]
        attr_accessor :instance_template
      
        # [Output Only] The resource type, which is always compute#instanceGroupManager
        # for managed instance groups.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the managed instance group. The name must be 1-63 characters long,
        # and comply with RFC1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Named ports configured for the Instance Groups complementary to this Instance
        # Group Manager.
        # Corresponds to the JSON property `namedPorts`
        # @return [Array<Google::Apis::ComputeV1::NamedPort>]
        attr_accessor :named_ports
      
        # [Output Only] The URL for this managed instance group. The server defines this
        # URL.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The URLs for all TargetPool resources to which instances in the instanceGroup
        # field are added. The target pools automatically apply to all of the instances
        # in the managed instance group.
        # Corresponds to the JSON property `targetPools`
        # @return [Array<String>]
        attr_accessor :target_pools
      
        # The target number of running instances for this managed instance group.
        # Deleting or abandoning instances reduces this number. Resizing the group
        # changes this number.
        # Corresponds to the JSON property `targetSize`
        # @return [Fixnum]
        attr_accessor :target_size
      
        # The name of the zone where the managed instance group is located.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_instance_name = args[:base_instance_name] if args.key?(:base_instance_name)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @current_actions = args[:current_actions] if args.key?(:current_actions)
          @description = args[:description] if args.key?(:description)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @id = args[:id] if args.key?(:id)
          @instance_group = args[:instance_group] if args.key?(:instance_group)
          @instance_template = args[:instance_template] if args.key?(:instance_template)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @named_ports = args[:named_ports] if args.key?(:named_ports)
          @self_link = args[:self_link] if args.key?(:self_link)
          @target_pools = args[:target_pools] if args.key?(:target_pools)
          @target_size = args[:target_size] if args.key?(:target_size)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # 
      class InstanceGroupManagerActionsSummary
        include Google::Apis::Core::Hashable
      
        # [Output Only] The total number of instances in the managed instance group that
        # are scheduled to be abandoned. Abandoning an instance removes it from the
        # managed instance group without deleting it.
        # Corresponds to the JSON property `abandoning`
        # @return [Fixnum]
        attr_accessor :abandoning
      
        # [Output Only] The number of instances in the managed instance group that are
        # scheduled to be created or are currently being created. If the group fails to
        # create one of these instances, it tries again until it creates the instance
        # successfully.
        # Corresponds to the JSON property `creating`
        # @return [Fixnum]
        attr_accessor :creating
      
        # [Output Only] The number of instances in the managed instance group that are
        # scheduled to be deleted or are currently being deleted.
        # Corresponds to the JSON property `deleting`
        # @return [Fixnum]
        attr_accessor :deleting
      
        # [Output Only] The number of instances in the managed instance group that are
        # running and have no scheduled actions.
        # Corresponds to the JSON property `none`
        # @return [Fixnum]
        attr_accessor :none
      
        # [Output Only] The number of instances in the managed instance group that are
        # scheduled to be recreated or are currently being being recreated. Recreating
        # an instance deletes the existing root persistent disk and creates a new disk
        # from the image that is defined in the instance template.
        # Corresponds to the JSON property `recreating`
        # @return [Fixnum]
        attr_accessor :recreating
      
        # [Output Only] The number of instances in the managed instance group that are
        # being reconfigured with properties that do not require a restart or a recreate
        # action. For example, setting or removing target pools for the instance.
        # Corresponds to the JSON property `refreshing`
        # @return [Fixnum]
        attr_accessor :refreshing
      
        # [Output Only] The number of instances in the managed instance group that are
        # scheduled to be restarted or are currently being restarted.
        # Corresponds to the JSON property `restarting`
        # @return [Fixnum]
        attr_accessor :restarting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @abandoning = args[:abandoning] if args.key?(:abandoning)
          @creating = args[:creating] if args.key?(:creating)
          @deleting = args[:deleting] if args.key?(:deleting)
          @none = args[:none] if args.key?(:none)
          @recreating = args[:recreating] if args.key?(:recreating)
          @refreshing = args[:refreshing] if args.key?(:refreshing)
          @restarting = args[:restarting] if args.key?(:restarting)
        end
      end
      
      # 
      class InstanceGroupManagerAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] A unique identifier for this aggregated list of managed instance
        # groups. The server generates this identifier.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A map of filtered managed instance group lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::InstanceGroupManagersScopedList>]
        attr_accessor :items
      
        # [Output Only] The resource type, which is always compute#
        # instanceGroupManagerAggregatedList for an aggregated list of managed instance
        # groups.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] The URL for this resource type. The server generates this URL.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # [Output Only] A list of managed instance groups.
      class InstanceGroupManagerList
        include Google::Apis::Core::Hashable
      
        # [Output Only] A unique identifier for this resource type. The server generates
        # this identifier.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of managed instance groups.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::InstanceGroupManager>]
        attr_accessor :items
      
        # [Output Only] The resource type, which is always compute#
        # instanceGroupManagerList for a list of managed instance groups.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] The URL for this resource type. The server generates this URL.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class InstanceGroupManagersAbandonInstancesRequest
        include Google::Apis::Core::Hashable
      
        # The URL for one or more instances to abandon from the managed instance group.
        # Corresponds to the JSON property `instances`
        # @return [Array<String>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
        end
      end
      
      # 
      class InstanceGroupManagersDeleteInstancesRequest
        include Google::Apis::Core::Hashable
      
        # The list of instances to delete from this managed instance group. Specify one
        # or more instance URLs.
        # Corresponds to the JSON property `instances`
        # @return [Array<String>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
        end
      end
      
      # 
      class InstanceGroupManagersListManagedInstancesResponse
        include Google::Apis::Core::Hashable
      
        # [Output Only] The list of instances in the managed instance group.
        # Corresponds to the JSON property `managedInstances`
        # @return [Array<Google::Apis::ComputeV1::ManagedInstance>]
        attr_accessor :managed_instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @managed_instances = args[:managed_instances] if args.key?(:managed_instances)
        end
      end
      
      # 
      class InstanceGroupManagersRecreateInstancesRequest
        include Google::Apis::Core::Hashable
      
        # The URL for one or more instances to recreate.
        # Corresponds to the JSON property `instances`
        # @return [Array<String>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
        end
      end
      
      # 
      class InstanceGroupManagersScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The list of managed instance groups that are contained in the
        # specified project and zone.
        # Corresponds to the JSON property `instanceGroupManagers`
        # @return [Array<Google::Apis::ComputeV1::InstanceGroupManager>]
        attr_accessor :instance_group_managers
      
        # [Output Only] The warning that replaces the list of managed instance groups
        # when the list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::InstanceGroupManagersScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_group_managers = args[:instance_group_managers] if args.key?(:instance_group_managers)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] The warning that replaces the list of managed instance groups
        # when the list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::InstanceGroupManagersScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class InstanceGroupManagersSetInstanceTemplateRequest
        include Google::Apis::Core::Hashable
      
        # The URL of the instance template that is specified for this managed instance
        # group. The group uses this template to create all new instances in the managed
        # instance group.
        # Corresponds to the JSON property `instanceTemplate`
        # @return [String]
        attr_accessor :instance_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_template = args[:instance_template] if args.key?(:instance_template)
        end
      end
      
      # 
      class InstanceGroupManagersSetTargetPoolsRequest
        include Google::Apis::Core::Hashable
      
        # The fingerprint of the target pools information. Use this optional property to
        # prevent conflicts when multiple users change the target pools settings
        # concurrently. Obtain the fingerprint with the instanceGroupManagers.get method.
        # Then, include the fingerprint in your request to ensure that you do not
        # overwrite changes that were applied from another concurrent request.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # The list of target pool URLs that instances in this managed instance group
        # belong to. The managed instance group applies these target pools to all of the
        # instances in the group. Existing instances and new instances in the group all
        # receive these target pool settings.
        # Corresponds to the JSON property `targetPools`
        # @return [Array<String>]
        attr_accessor :target_pools
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @target_pools = args[:target_pools] if args.key?(:target_pools)
        end
      end
      
      # 
      class InstanceGroupsAddInstancesRequest
        include Google::Apis::Core::Hashable
      
        # The list of instances to add to the instance group.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::ComputeV1::InstanceReference>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
        end
      end
      
      # 
      class InstanceGroupsListInstances
        include Google::Apis::Core::Hashable
      
        # [Output Only] A unique identifier for this list of instance groups. The server
        # generates this identifier.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of instances and any named ports that are assigned to
        # those instances.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::InstanceWithNamedPorts>]
        attr_accessor :items
      
        # [Output Only] The resource type, which is always compute#
        # instanceGroupsListInstances for lists of instance groups.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] The URL for this list of instance groups. The server generates
        # this URL.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class InstanceGroupsListInstancesRequest
        include Google::Apis::Core::Hashable
      
        # A filter for the state of the instances in the instance group. Valid options
        # are ALL or RUNNING. If you do not specify this parameter the list includes all
        # instances regardless of their state.
        # Corresponds to the JSON property `instanceState`
        # @return [String]
        attr_accessor :instance_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_state = args[:instance_state] if args.key?(:instance_state)
        end
      end
      
      # 
      class InstanceGroupsRemoveInstancesRequest
        include Google::Apis::Core::Hashable
      
        # The list of instances to remove from the instance group.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::ComputeV1::InstanceReference>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
        end
      end
      
      # 
      class InstanceGroupsScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The list of instance groups that are contained in this scope.
        # Corresponds to the JSON property `instanceGroups`
        # @return [Array<Google::Apis::ComputeV1::InstanceGroup>]
        attr_accessor :instance_groups
      
        # [Output Only] An informational warning that replaces the list of instance
        # groups when the list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::InstanceGroupsScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_groups = args[:instance_groups] if args.key?(:instance_groups)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] An informational warning that replaces the list of instance
        # groups when the list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::InstanceGroupsScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class InstanceGroupsSetNamedPortsRequest
        include Google::Apis::Core::Hashable
      
        # The fingerprint of the named ports information for this instance group. Use
        # this optional property to prevent conflicts when multiple users change the
        # named ports settings concurrently. Obtain the fingerprint with the
        # instanceGroups.get method. Then, include the fingerprint in your request to
        # ensure that you do not overwrite changes that were applied from another
        # concurrent request.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # The list of named ports to set for this instance group.
        # Corresponds to the JSON property `namedPorts`
        # @return [Array<Google::Apis::ComputeV1::NamedPort>]
        attr_accessor :named_ports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @named_ports = args[:named_ports] if args.key?(:named_ports)
        end
      end
      
      # Contains a list of instances.
      class InstanceList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of instances.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Instance>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#instanceList for lists of
        # Instance resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class MoveInstanceRequest
        include Google::Apis::Core::Hashable
      
        # The URL of the destination zone to move the instance. This can be a full or
        # partial URL. For example, the following are all valid URLs to a zone:
        # - https://www.googleapis.com/compute/v1/projects/project/zones/zone
        # - projects/project/zones/zone
        # - zones/zone
        # Corresponds to the JSON property `destinationZone`
        # @return [String]
        attr_accessor :destination_zone
      
        # The URL of the target instance to move. This can be a full or partial URL. For
        # example, the following are all valid URLs to an instance:
        # - https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/
        # instance
        # - projects/project/zones/zone/instances/instance
        # - zones/zone/instances/instance
        # Corresponds to the JSON property `targetInstance`
        # @return [String]
        attr_accessor :target_instance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_zone = args[:destination_zone] if args.key?(:destination_zone)
          @target_instance = args[:target_instance] if args.key?(:target_instance)
        end
      end
      
      # 
      class InstanceProperties
        include Google::Apis::Core::Hashable
      
        # Enables instances created based on this template to send packets with source
        # IP addresses other than their own and receive packets with destination IP
        # addresses other than their own. If these instances will be used as an IP
        # gateway or it will be set as the next-hop in a Route resource, specify true.
        # If unsure, leave this set to false. See the canIpForward documentation for
        # more information.
        # Corresponds to the JSON property `canIpForward`
        # @return [Boolean]
        attr_accessor :can_ip_forward
        alias_method :can_ip_forward?, :can_ip_forward
      
        # An optional text description for the instances that are created from this
        # instance template.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # An array of disks that are associated with the instances that are created from
        # this template.
        # Corresponds to the JSON property `disks`
        # @return [Array<Google::Apis::ComputeV1::AttachedDisk>]
        attr_accessor :disks
      
        # The machine type to use for instances that are created from this template.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # A metadata key/value entry.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ComputeV1::Metadata]
        attr_accessor :metadata
      
        # An array of network access configurations for this interface.
        # Corresponds to the JSON property `networkInterfaces`
        # @return [Array<Google::Apis::ComputeV1::NetworkInterface>]
        attr_accessor :network_interfaces
      
        # Sets the scheduling options for an Instance.
        # Corresponds to the JSON property `scheduling`
        # @return [Google::Apis::ComputeV1::Scheduling]
        attr_accessor :scheduling
      
        # A list of service accounts with specified scopes. Access tokens for these
        # service accounts are available to the instances that are created from this
        # template. Use metadata queries to obtain the access tokens for these instances.
        # Corresponds to the JSON property `serviceAccounts`
        # @return [Array<Google::Apis::ComputeV1::ServiceAccount>]
        attr_accessor :service_accounts
      
        # A set of instance tags.
        # Corresponds to the JSON property `tags`
        # @return [Google::Apis::ComputeV1::Tags]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_ip_forward = args[:can_ip_forward] if args.key?(:can_ip_forward)
          @description = args[:description] if args.key?(:description)
          @disks = args[:disks] if args.key?(:disks)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @metadata = args[:metadata] if args.key?(:metadata)
          @network_interfaces = args[:network_interfaces] if args.key?(:network_interfaces)
          @scheduling = args[:scheduling] if args.key?(:scheduling)
          @service_accounts = args[:service_accounts] if args.key?(:service_accounts)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # 
      class InstanceReference
        include Google::Apis::Core::Hashable
      
        # The URL for a specific instance.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance = args[:instance] if args.key?(:instance)
        end
      end
      
      # An Instance Template resource.
      class InstanceTemplate
        include Google::Apis::Core::Hashable
      
        # [Output Only] The creation timestamp for this instance template in RFC3339
        # text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] A unique identifier for this instance template. The server
        # defines this identifier.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] The resource type, which is always compute#instanceTemplate for
        # instance templates.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::ComputeV1::InstanceProperties]
        attr_accessor :properties
      
        # [Output Only] The URL for this instance template. The server defines this URL.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @properties = args[:properties] if args.key?(:properties)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A list of instance templates.
      class InstanceTemplateList
        include Google::Apis::Core::Hashable
      
        # [Output Only] A unique identifier for this instance template. The server
        # defines this identifier.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] list of InstanceTemplate resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::InstanceTemplate>]
        attr_accessor :items
      
        # [Output Only] The resource type, which is always compute#
        # instanceTemplatesListResponse for instance template lists.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] The URL for this instance template list. The server defines this
        # URL.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class InstanceWithNamedPorts
        include Google::Apis::Core::Hashable
      
        # [Output Only] The URL of the instance.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # [Output Only] The named ports that belong to this instance group.
        # Corresponds to the JSON property `namedPorts`
        # @return [Array<Google::Apis::ComputeV1::NamedPort>]
        attr_accessor :named_ports
      
        # [Output Only] The status of the instance.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance = args[:instance] if args.key?(:instance)
          @named_ports = args[:named_ports] if args.key?(:named_ports)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class InstancesScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] List of instances contained in this scope.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::ComputeV1::Instance>]
        attr_accessor :instances
      
        # [Output Only] Informational warning which replaces the list of instances when
        # the list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::InstancesScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning which replaces the list of instances when
        # the list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::InstancesScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class InstancesSetMachineTypeRequest
        include Google::Apis::Core::Hashable
      
        # Full or partial URL of the machine type resource. See Machine Types for a full
        # list of machine types. For example: zones/us-central1-f/machineTypes/n1-
        # standard-1
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
        end
      end
      
      # A license resource.
      class License
        include Google::Apis::Core::Hashable
      
        # [Output Only] If true, the customer will be charged license fee for running
        # software that contains this license on an instance.
        # Corresponds to the JSON property `chargesUseFee`
        # @return [Boolean]
        attr_accessor :charges_use_fee
        alias_method :charges_use_fee?, :charges_use_fee
      
        # [Output Only] Type of resource. Always compute#license for licenses.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Name of the resource. The name is 1-63 characters long and
        # complies with RFC1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @charges_use_fee = args[:charges_use_fee] if args.key?(:charges_use_fee)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A Machine Type resource.
      class MachineType
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # Deprecation status for a public resource.
        # Corresponds to the JSON property `deprecated`
        # @return [Google::Apis::ComputeV1::DeprecationStatus]
        attr_accessor :deprecated
      
        # [Output Only] An optional textual description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The number of virtual CPUs that are available to the instance.
        # Corresponds to the JSON property `guestCpus`
        # @return [Fixnum]
        attr_accessor :guest_cpus
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Deprecated] This property is deprecated and will never be populated with any
        # relevant values.
        # Corresponds to the JSON property `imageSpaceGb`
        # @return [Fixnum]
        attr_accessor :image_space_gb
      
        # [Output Only] The type of the resource. Always compute#machineType for machine
        # types.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Maximum persistent disks allowed.
        # Corresponds to the JSON property `maximumPersistentDisks`
        # @return [Fixnum]
        attr_accessor :maximum_persistent_disks
      
        # [Output Only] Maximum total persistent disks size (GB) allowed.
        # Corresponds to the JSON property `maximumPersistentDisksSizeGb`
        # @return [String]
        attr_accessor :maximum_persistent_disks_size_gb
      
        # [Output Only] The amount of physical memory available to the instance, defined
        # in MB.
        # Corresponds to the JSON property `memoryMb`
        # @return [Fixnum]
        attr_accessor :memory_mb
      
        # [Output Only] Name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] List of extended scratch disks assigned to the instance.
        # Corresponds to the JSON property `scratchDisks`
        # @return [Array<Google::Apis::ComputeV1::MachineType::ScratchDisk>]
        attr_accessor :scratch_disks
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] The name of the zone where the machine type resides, such as us-
        # central1-a.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @deprecated = args[:deprecated] if args.key?(:deprecated)
          @description = args[:description] if args.key?(:description)
          @guest_cpus = args[:guest_cpus] if args.key?(:guest_cpus)
          @id = args[:id] if args.key?(:id)
          @image_space_gb = args[:image_space_gb] if args.key?(:image_space_gb)
          @kind = args[:kind] if args.key?(:kind)
          @maximum_persistent_disks = args[:maximum_persistent_disks] if args.key?(:maximum_persistent_disks)
          @maximum_persistent_disks_size_gb = args[:maximum_persistent_disks_size_gb] if args.key?(:maximum_persistent_disks_size_gb)
          @memory_mb = args[:memory_mb] if args.key?(:memory_mb)
          @name = args[:name] if args.key?(:name)
          @scratch_disks = args[:scratch_disks] if args.key?(:scratch_disks)
          @self_link = args[:self_link] if args.key?(:self_link)
          @zone = args[:zone] if args.key?(:zone)
        end
        
        # 
        class ScratchDisk
          include Google::Apis::Core::Hashable
        
          # Size of the scratch disk, defined in GB.
          # Corresponds to the JSON property `diskGb`
          # @return [Fixnum]
          attr_accessor :disk_gb
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @disk_gb = args[:disk_gb] if args.key?(:disk_gb)
          end
        end
      end
      
      # 
      class MachineTypeAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A map of scoped machine type lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::MachineTypesScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#machineTypeAggregatedList for
        # aggregated lists of machine types.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Contains a list of machine types.
      class MachineTypeList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of Machine Type resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::MachineType>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#machineTypeList for lists of
        # machine types.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class MachineTypesScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] List of machine types contained in this scope.
        # Corresponds to the JSON property `machineTypes`
        # @return [Array<Google::Apis::ComputeV1::MachineType>]
        attr_accessor :machine_types
      
        # [Output Only] An informational warning that appears when the machine types
        # list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::MachineTypesScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @machine_types = args[:machine_types] if args.key?(:machine_types)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] An informational warning that appears when the machine types
        # list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::MachineTypesScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class ManagedInstance
        include Google::Apis::Core::Hashable
      
        # [Output Only] The current action that the managed instance group has scheduled
        # for the instance. Possible values:
        # - NONE The instance is running, and the managed instance group does not have
        # any scheduled actions for this instance.
        # - CREATING The managed instance group is creating this instance. If the group
        # fails to create this instance, it will try again until it is successful.
        # - CREATING_WITHOUT_RETRIES The managed instance group is attempting to create
        # this instance only once. If the group fails to create this instance, it does
        # not try again and the group's target_size value is decreased.
        # - RECREATING The managed instance group is recreating this instance.
        # - DELETING The managed instance group is permanently deleting this instance.
        # - ABANDONING The managed instance group is abandoning this instance. The
        # instance will be removed from the instance group and from any target pools
        # that are associated with this group.
        # - RESTARTING The managed instance group is restarting the instance.
        # - REFRESHING The managed instance group is applying configuration changes to
        # the instance without stopping it. For example, the group can update the target
        # pool list for an instance without stopping that instance.
        # Corresponds to the JSON property `currentAction`
        # @return [String]
        attr_accessor :current_action
      
        # [Output only] The unique identifier for this resource. This field is empty
        # when instance does not exist.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] The URL of the instance. The URL can exist even if the instance
        # has not yet been created.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # [Output Only] The status of the instance. This field is empty when the
        # instance does not exist.
        # Corresponds to the JSON property `instanceStatus`
        # @return [String]
        attr_accessor :instance_status
      
        # [Output Only] Information about the last attempt to create or delete the
        # instance.
        # Corresponds to the JSON property `lastAttempt`
        # @return [Google::Apis::ComputeV1::ManagedInstanceLastAttempt]
        attr_accessor :last_attempt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_action = args[:current_action] if args.key?(:current_action)
          @id = args[:id] if args.key?(:id)
          @instance = args[:instance] if args.key?(:instance)
          @instance_status = args[:instance_status] if args.key?(:instance_status)
          @last_attempt = args[:last_attempt] if args.key?(:last_attempt)
        end
      end
      
      # 
      class ManagedInstanceLastAttempt
        include Google::Apis::Core::Hashable
      
        # [Output Only] Encountered errors during the last attempt to create or delete
        # the instance.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ComputeV1::ManagedInstanceLastAttempt::Errors]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
        end
        
        # [Output Only] Encountered errors during the last attempt to create or delete
        # the instance.
        class Errors
          include Google::Apis::Core::Hashable
        
          # [Output Only] The array of errors encountered while processing this operation.
          # Corresponds to the JSON property `errors`
          # @return [Array<Google::Apis::ComputeV1::ManagedInstanceLastAttempt::Errors::Error>]
          attr_accessor :errors
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @errors = args[:errors] if args.key?(:errors)
          end
          
          # 
          class Error
            include Google::Apis::Core::Hashable
          
            # [Output Only] The error type identifier for this error.
            # Corresponds to the JSON property `code`
            # @return [String]
            attr_accessor :code
          
            # [Output Only] Indicates the field in the request that caused the error. This
            # property is optional.
            # Corresponds to the JSON property `location`
            # @return [String]
            attr_accessor :location
          
            # [Output Only] An optional, human-readable error message.
            # Corresponds to the JSON property `message`
            # @return [String]
            attr_accessor :message
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @code = args[:code] if args.key?(:code)
              @location = args[:location] if args.key?(:location)
              @message = args[:message] if args.key?(:message)
            end
          end
        end
      end
      
      # A metadata key/value entry.
      class Metadata
        include Google::Apis::Core::Hashable
      
        # Specifies a fingerprint for this request, which is essentially a hash of the
        # metadata's contents and used for optimistic locking. The fingerprint is
        # initially generated by Compute Engine and changes after every request to
        # modify or update metadata. You must always provide an up-to-date fingerprint
        # hash in order to update or change metadata.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # Array of key/value pairs. The total size of all keys and values must be less
        # than 512 KB.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Metadata::Item>]
        attr_accessor :items
      
        # [Output Only] Type of the resource. Always compute#metadata for metadata.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
        end
        
        # 
        class Item
          include Google::Apis::Core::Hashable
        
          # Key for the metadata entry. Keys must conform to the following regexp: [a-zA-
          # Z0-9-_]+, and be less than 128 bytes in length. This is reflected as part of a
          # URL in the metadata server. Additionally, to avoid ambiguity, keys must not
          # conflict with any other metadata keys for the project.
          # Corresponds to the JSON property `key`
          # @return [String]
          attr_accessor :key
        
          # Value for the metadata entry. These are free-form strings, and only have
          # meaning as interpreted by the image running in the instance. The only
          # restriction placed on values is that their size must be less than or equal to
          # 32768 bytes.
          # Corresponds to the JSON property `value`
          # @return [String]
          attr_accessor :value
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @key = args[:key] if args.key?(:key)
            @value = args[:value] if args.key?(:value)
          end
        end
      end
      
      # The named port. For example: .
      class NamedPort
        include Google::Apis::Core::Hashable
      
        # The name for this named port. The name must be 1-63 characters long, and
        # comply with RFC1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The port number, which can be a value between 1 and 65535.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @port = args[:port] if args.key?(:port)
        end
      end
      
      # Represents a Network resource. Read Networks and Firewalls for more
      # information.
      class Network
        include Google::Apis::Core::Hashable
      
        # The range of internal addresses that are legal on this network. This range is
        # a CIDR specification, for example: 192.168.0.0/16. Provided by the client when
        # the network is created.
        # Corresponds to the JSON property `IPv4Range`
        # @return [String]
        attr_accessor :i_pv4_range
      
        # When set to true, the network is created in "auto subnet mode". When set to
        # false, the network is in "custom subnet mode".
        # In "auto subnet mode", a newly created network is assigned the default CIDR of
        # 10.128.0.0/9 and it automatically creates one subnetwork per region.
        # Corresponds to the JSON property `autoCreateSubnetworks`
        # @return [Boolean]
        attr_accessor :auto_create_subnetworks
        alias_method :auto_create_subnetworks?, :auto_create_subnetworks
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A gateway address for default routing to other networks. This value is read
        # only and is selected by the Google Compute Engine, typically as the first
        # usable address in the IPv4Range.
        # Corresponds to the JSON property `gatewayIPv4`
        # @return [String]
        attr_accessor :gateway_i_pv4
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#network for networks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Server-defined fully-qualified URLs for all subnetworks in this
        # network.
        # Corresponds to the JSON property `subnetworks`
        # @return [Array<String>]
        attr_accessor :subnetworks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @i_pv4_range = args[:i_pv4_range] if args.key?(:i_pv4_range)
          @auto_create_subnetworks = args[:auto_create_subnetworks] if args.key?(:auto_create_subnetworks)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @gateway_i_pv4 = args[:gateway_i_pv4] if args.key?(:gateway_i_pv4)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @self_link = args[:self_link] if args.key?(:self_link)
          @subnetworks = args[:subnetworks] if args.key?(:subnetworks)
        end
      end
      
      # A network interface resource attached to an instance.
      class NetworkInterface
        include Google::Apis::Core::Hashable
      
        # An array of configurations for this interface. Currently, ONE_TO_ONE_NAT is
        # the only access config supported. If there are no accessConfigs specified,
        # then this instance will have no external internet access.
        # Corresponds to the JSON property `accessConfigs`
        # @return [Array<Google::Apis::ComputeV1::AccessConfig>]
        attr_accessor :access_configs
      
        # [Output Only] The name of the network interface, generated by the server. For
        # network devices, these are eth0, eth1, etc.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # URL of the network resource for this instance. This is required for creating
        # an instance but optional when creating a firewall rule. If not specified when
        # creating a firewall rule, the default network is used:
        # global/networks/default
        # If you specify this property, you can specify the network as a full or partial
        # URL. For example, the following are all valid URLs:
        # - https://www.googleapis.com/compute/v1/projects/project/global/networks/
        # network
        # - projects/project/global/networks/network
        # - global/networks/default
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # An IPv4 internal network address to assign to the instance for this network
        # interface. If not specified by the user, an unused internal IP is assigned by
        # the system.
        # Corresponds to the JSON property `networkIP`
        # @return [String]
        attr_accessor :network_ip
      
        # The URL of the Subnetwork resource for this instance. If the network resource
        # is in legacy mode, do not provide this property. If the network is in auto
        # subnet mode, providing the subnetwork is optional. If the network is in custom
        # subnet mode, then this field should be specified. If you specify this property,
        # you can specify the subnetwork as a full or partial URL. For example, the
        # following are all valid URLs:
        # - https://www.googleapis.com/compute/v1/projects/project/regions/region/
        # subnetworks/subnetwork
        # - regions/region/subnetworks/subnetwork
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_configs = args[:access_configs] if args.key?(:access_configs)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @network_ip = args[:network_ip] if args.key?(:network_ip)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
        end
      end
      
      # Contains a list of networks.
      class NetworkList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of Network resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Network>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#networkList for lists of
        # networks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource .
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # An Operation resource, used to manage asynchronous API requests.
      class Operation
        include Google::Apis::Core::Hashable
      
        # [Output Only] Reserved for future use.
        # Corresponds to the JSON property `clientOperationId`
        # @return [String]
        attr_accessor :client_operation_id
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # [Output Only] A textual description of the operation, which is set when the
        # operation is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The time that this operation was completed. This value is in
        # RFC3339 text format.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # [Output Only] If errors are generated during processing of the operation, this
        # field will be populated.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ComputeV1::Operation::Error]
        attr_accessor :error
      
        # [Output Only] If the operation fails, this field contains the HTTP error
        # message that was returned, such as NOT FOUND.
        # Corresponds to the JSON property `httpErrorMessage`
        # @return [String]
        attr_accessor :http_error_message
      
        # [Output Only] If the operation fails, this field contains the HTTP error
        # status code that was returned. For example, a 404 means the resource was not
        # found.
        # Corresponds to the JSON property `httpErrorStatusCode`
        # @return [Fixnum]
        attr_accessor :http_error_status_code
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] The time that this operation was requested. This value is in
        # RFC3339 text format.
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # [Output Only] Type of the resource. Always compute#operation for Operation
        # resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] The type of operation, such as insert, update, or delete, and so
        # on.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # [Output Only] An optional progress indicator that ranges from 0 to 100. There
        # is no requirement that this be linear or support any granularity of operations.
        # This should not be used to guess when the operation will be complete. This
        # number should monotonically increase as the operation progresses.
        # Corresponds to the JSON property `progress`
        # @return [Fixnum]
        attr_accessor :progress
      
        # [Output Only] The URL of the region where the operation resides. Only
        # available when performing regional operations.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] The time that this operation was started by the server. This
        # value is in RFC3339 text format.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # [Output Only] The status of the operation, which can be one of the following:
        # PENDING, RUNNING, or DONE.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output Only] An optional textual description of the current status of the
        # operation.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # [Output Only] The unique target ID, which identifies a specific incarnation of
        # the target resource.
        # Corresponds to the JSON property `targetId`
        # @return [String]
        attr_accessor :target_id
      
        # [Output Only] The URL of the resource that the operation modifies.
        # Corresponds to the JSON property `targetLink`
        # @return [String]
        attr_accessor :target_link
      
        # [Output Only] User who requested the operation, for example: user@example.com.
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        # [Output Only] If warning messages are generated during processing of the
        # operation, this field will be populated.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::ComputeV1::Operation::Warning>]
        attr_accessor :warnings
      
        # [Output Only] The URL of the zone where the operation resides. Only available
        # when performing per-zone operations.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_operation_id = args[:client_operation_id] if args.key?(:client_operation_id)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error = args[:error] if args.key?(:error)
          @http_error_message = args[:http_error_message] if args.key?(:http_error_message)
          @http_error_status_code = args[:http_error_status_code] if args.key?(:http_error_status_code)
          @id = args[:id] if args.key?(:id)
          @insert_time = args[:insert_time] if args.key?(:insert_time)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @progress = args[:progress] if args.key?(:progress)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target_id = args[:target_id] if args.key?(:target_id)
          @target_link = args[:target_link] if args.key?(:target_link)
          @user = args[:user] if args.key?(:user)
          @warnings = args[:warnings] if args.key?(:warnings)
          @zone = args[:zone] if args.key?(:zone)
        end
        
        # [Output Only] If errors are generated during processing of the operation, this
        # field will be populated.
        class Error
          include Google::Apis::Core::Hashable
        
          # [Output Only] The array of errors encountered while processing this operation.
          # Corresponds to the JSON property `errors`
          # @return [Array<Google::Apis::ComputeV1::Operation::Error::Error>]
          attr_accessor :errors
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @errors = args[:errors] if args.key?(:errors)
          end
          
          # 
          class Error
            include Google::Apis::Core::Hashable
          
            # [Output Only] The error type identifier for this error.
            # Corresponds to the JSON property `code`
            # @return [String]
            attr_accessor :code
          
            # [Output Only] Indicates the field in the request that caused the error. This
            # property is optional.
            # Corresponds to the JSON property `location`
            # @return [String]
            attr_accessor :location
          
            # [Output Only] An optional, human-readable error message.
            # Corresponds to the JSON property `message`
            # @return [String]
            attr_accessor :message
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @code = args[:code] if args.key?(:code)
              @location = args[:location] if args.key?(:location)
              @message = args[:message] if args.key?(:message)
            end
          end
        end
        
        # 
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::Operation::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class OperationAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A map of scoped operation lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::OperationsScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#operationAggregatedList for
        # aggregated lists of operations.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Contains a list of Operation resources.
      class OperationList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of Operation resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Operation>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#operations for Operations
        # resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class OperationsScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] List of operations contained in this scope.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::ComputeV1::Operation>]
        attr_accessor :operations
      
        # [Output Only] Informational warning which replaces the list of operations when
        # the list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::OperationsScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operations = args[:operations] if args.key?(:operations)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning which replaces the list of operations when
        # the list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::OperationsScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # A matcher for the path portion of the URL. The BackendService from the longest-
      # matched rule will serve the URL. If no rule was matched, the default service
      # will be used.
      class PathMatcher
        include Google::Apis::Core::Hashable
      
        # The full or partial URL to the BackendService resource. This will be used if
        # none of the pathRules defined by this PathMatcher is matched by the URL's path
        # portion. For example, the following are all valid URLs to a BackendService
        # resource:
        # - https://www.googleapis.com/compute/v1/projects/project/global/
        # backendServices/backendService
        # - compute/v1/projects/project/global/backendServices/backendService
        # - global/backendServices/backendService
        # Corresponds to the JSON property `defaultService`
        # @return [String]
        attr_accessor :default_service
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The name to which this PathMatcher is referred by the HostRule.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The list of path rules.
        # Corresponds to the JSON property `pathRules`
        # @return [Array<Google::Apis::ComputeV1::PathRule>]
        attr_accessor :path_rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_service = args[:default_service] if args.key?(:default_service)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @path_rules = args[:path_rules] if args.key?(:path_rules)
        end
      end
      
      # A path-matching rule for a URL. If matched, will use the specified
      # BackendService to handle the traffic arriving at this URL.
      class PathRule
        include Google::Apis::Core::Hashable
      
        # The list of path patterns to match. Each must start with / and the only place
        # a * is allowed is at the end following a /. The string fed to the path matcher
        # does not include any text after the first ? or #, and those chars are not
        # allowed here.
        # Corresponds to the JSON property `paths`
        # @return [Array<String>]
        attr_accessor :paths
      
        # The URL of the BackendService resource if this rule is matched.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @paths = args[:paths] if args.key?(:paths)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # A Project resource. Projects can only be created in the Google Cloud Platform
      # Console. Unless marked otherwise, values can only be modified in the console.
      class Project
        include Google::Apis::Core::Hashable
      
        # A metadata key/value entry.
        # Corresponds to the JSON property `commonInstanceMetadata`
        # @return [Google::Apis::ComputeV1::Metadata]
        attr_accessor :common_instance_metadata
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional textual description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Restricted features enabled for use on this project.
        # Corresponds to the JSON property `enabledFeatures`
        # @return [Array<String>]
        attr_accessor :enabled_features
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server. This is not the project ID, and is just a unique ID
        # used by Compute Engine to identify resources.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#project for projects.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The project ID. For example: my-example-project. Use the project ID to make
        # requests to Compute Engine.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Quotas assigned to this project.
        # Corresponds to the JSON property `quotas`
        # @return [Array<Google::Apis::ComputeV1::Quota>]
        attr_accessor :quotas
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The location in Cloud Storage and naming method of the daily usage report.
        # Contains bucket_name and report_name prefix.
        # Corresponds to the JSON property `usageExportLocation`
        # @return [Google::Apis::ComputeV1::UsageExportLocation]
        attr_accessor :usage_export_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_instance_metadata = args[:common_instance_metadata] if args.key?(:common_instance_metadata)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @enabled_features = args[:enabled_features] if args.key?(:enabled_features)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @quotas = args[:quotas] if args.key?(:quotas)
          @self_link = args[:self_link] if args.key?(:self_link)
          @usage_export_location = args[:usage_export_location] if args.key?(:usage_export_location)
        end
      end
      
      # A quotas entry.
      class Quota
        include Google::Apis::Core::Hashable
      
        # [Output Only] Quota limit for this metric.
        # Corresponds to the JSON property `limit`
        # @return [Float]
        attr_accessor :limit
      
        # [Output Only] Name of the quota metric.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # [Output Only] Current usage of this metric.
        # Corresponds to the JSON property `usage`
        # @return [Float]
        attr_accessor :usage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @limit = args[:limit] if args.key?(:limit)
          @metric = args[:metric] if args.key?(:metric)
          @usage = args[:usage] if args.key?(:usage)
        end
      end
      
      # Region resource.
      class Region
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # Deprecation status for a public resource.
        # Corresponds to the JSON property `deprecated`
        # @return [Google::Apis::ComputeV1::DeprecationStatus]
        attr_accessor :deprecated
      
        # [Output Only] Textual description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#region for regions.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Quotas assigned to this region.
        # Corresponds to the JSON property `quotas`
        # @return [Array<Google::Apis::ComputeV1::Quota>]
        attr_accessor :quotas
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Status of the region, either UP or DOWN.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output Only] A list of zones available in this region, in the form of
        # resource URLs.
        # Corresponds to the JSON property `zones`
        # @return [Array<String>]
        attr_accessor :zones
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @deprecated = args[:deprecated] if args.key?(:deprecated)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @quotas = args[:quotas] if args.key?(:quotas)
          @self_link = args[:self_link] if args.key?(:self_link)
          @status = args[:status] if args.key?(:status)
          @zones = args[:zones] if args.key?(:zones)
        end
      end
      
      # Contains a list of region resources.
      class RegionList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of Region resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Region>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#regionList for lists of regions.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class ResourceGroupReference
        include Google::Apis::Core::Hashable
      
        # A URI referencing one of the resource views listed in the backend service.
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group = args[:group] if args.key?(:group)
        end
      end
      
      # Represents a Route resource. A route specifies how certain packets should be
      # handled by the network. Routes are associated with instances by tags and the
      # set of routes for a particular instance is called its routing table.
      # For each packet leaving a instance, the system searches that instance's
      # routing table for a single best matching route. Routes match packets by
      # destination IP address, preferring smaller or more specific ranges over larger
      # ones. If there is a tie, the system selects the route with the smallest
      # priority value. If there is still a tie, it uses the layer three and four
      # packet headers to select just one of the remaining matching routes. The packet
      # is then forwarded as specified by the nextHop field of the winning route -
      # either to another instance destination, a instance gateway or a Google Compute
      # Engine-operated gateway.
      # Packets that do not match any route in the sending instance's routing table
      # are dropped.
      class Route
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The destination range of outgoing packets that this route applies to.
        # Corresponds to the JSON property `destRange`
        # @return [String]
        attr_accessor :dest_range
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of this resource. Always compute#routes for Route resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Fully-qualified URL of the network that this route applies to.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # The URL to a gateway that should handle matching packets. You can only specify
        # the internet gateway using a full or partial valid URL:  projects/<project-id>/
        # global/gateways/default-internet-gateway
        # Corresponds to the JSON property `nextHopGateway`
        # @return [String]
        attr_accessor :next_hop_gateway
      
        # The URL to an instance that should handle matching packets. You can specify
        # this as a full or partial URL. For example:
        # https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/
        # Corresponds to the JSON property `nextHopInstance`
        # @return [String]
        attr_accessor :next_hop_instance
      
        # The network IP address of an instance that should handle matching packets.
        # Corresponds to the JSON property `nextHopIp`
        # @return [String]
        attr_accessor :next_hop_ip
      
        # The URL of the local network if it should handle matching packets.
        # Corresponds to the JSON property `nextHopNetwork`
        # @return [String]
        attr_accessor :next_hop_network
      
        # The URL to a VpnTunnel that should handle matching packets.
        # Corresponds to the JSON property `nextHopVpnTunnel`
        # @return [String]
        attr_accessor :next_hop_vpn_tunnel
      
        # The priority of this route. Priority is used to break ties in cases where
        # there is more than one matching route of equal prefix length. In the case of
        # two routes with equal prefix length, the one with the lowest-numbered priority
        # value wins. Default value is 1000. Valid range is 0 through 65535.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # [Output Only] Server-defined fully-qualified URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # A list of instance tags to which this route applies.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # [Output Only] If potential misconfigurations are detected for this route, this
        # field will be populated with warning messages.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::ComputeV1::Route::Warning>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @dest_range = args[:dest_range] if args.key?(:dest_range)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @next_hop_gateway = args[:next_hop_gateway] if args.key?(:next_hop_gateway)
          @next_hop_instance = args[:next_hop_instance] if args.key?(:next_hop_instance)
          @next_hop_ip = args[:next_hop_ip] if args.key?(:next_hop_ip)
          @next_hop_network = args[:next_hop_network] if args.key?(:next_hop_network)
          @next_hop_vpn_tunnel = args[:next_hop_vpn_tunnel] if args.key?(:next_hop_vpn_tunnel)
          @priority = args[:priority] if args.key?(:priority)
          @self_link = args[:self_link] if args.key?(:self_link)
          @tags = args[:tags] if args.key?(:tags)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
        
        # 
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::Route::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Contains a list of Route resources.
      class RouteList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource. Defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of Route resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Route>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Sets the scheduling options for an Instance.
      class Scheduling
        include Google::Apis::Core::Hashable
      
        # Specifies whether the instance should be automatically restarted if it is
        # terminated by Compute Engine (not terminated by a user). You can only set the
        # automatic restart option for standard instances. Preemptible instances cannot
        # be automatically restarted.
        # Corresponds to the JSON property `automaticRestart`
        # @return [Boolean]
        attr_accessor :automatic_restart
        alias_method :automatic_restart?, :automatic_restart
      
        # Defines the maintenance behavior for this instance. For standard instances,
        # the default behavior is MIGRATE. For preemptible instances, the default and
        # only possible behavior is TERMINATE. For more information, see Setting
        # Instance Scheduling Options.
        # Corresponds to the JSON property `onHostMaintenance`
        # @return [String]
        attr_accessor :on_host_maintenance
      
        # Whether the instance is preemptible.
        # Corresponds to the JSON property `preemptible`
        # @return [Boolean]
        attr_accessor :preemptible
        alias_method :preemptible?, :preemptible
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automatic_restart = args[:automatic_restart] if args.key?(:automatic_restart)
          @on_host_maintenance = args[:on_host_maintenance] if args.key?(:on_host_maintenance)
          @preemptible = args[:preemptible] if args.key?(:preemptible)
        end
      end
      
      # An instance's serial console output.
      class SerialPortOutput
        include Google::Apis::Core::Hashable
      
        # [Output Only] The contents of the console output.
        # Corresponds to the JSON property `contents`
        # @return [String]
        attr_accessor :contents
      
        # [Output Only] Type of the resource. Always compute#serialPortOutput for serial
        # port output.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] if args.key?(:contents)
          @kind = args[:kind] if args.key?(:kind)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A service account.
      class ServiceAccount
        include Google::Apis::Core::Hashable
      
        # Email address of the service account.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The list of scopes to be made available for this service account.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @scopes = args[:scopes] if args.key?(:scopes)
        end
      end
      
      # A persistent disk snapshot resource.
      class Snapshot
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] Size of the snapshot, specified in GB.
        # Corresponds to the JSON property `diskSizeGb`
        # @return [String]
        attr_accessor :disk_size_gb
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#snapshot for Snapshot
        # resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A list of public visible licenses that apply to this snapshot.
        # This can be because the original image had licenses attached (such as a
        # Windows image).
        # Corresponds to the JSON property `licenses`
        # @return [Array<String>]
        attr_accessor :licenses
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] The source disk used to create this snapshot.
        # Corresponds to the JSON property `sourceDisk`
        # @return [String]
        attr_accessor :source_disk
      
        # [Output Only] The ID value of the disk used to create this snapshot. This
        # value may be used to determine whether the snapshot was taken from the current
        # or a previous instance of a given disk name.
        # Corresponds to the JSON property `sourceDiskId`
        # @return [String]
        attr_accessor :source_disk_id
      
        # [Output Only] The status of the snapshot. This can be CREATING, DELETING,
        # FAILED, READY, or UPLOADING.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output Only] A size of the the storage used by the snapshot. As snapshots
        # share storage, this number is expected to change with snapshot creation/
        # deletion.
        # Corresponds to the JSON property `storageBytes`
        # @return [String]
        attr_accessor :storage_bytes
      
        # [Output Only] An indicator whether storageBytes is in a stable state or it is
        # being adjusted as a result of shared storage reallocation. This status can
        # either be UPDATING, meaning the size of the snapshot is being updated, or
        # UP_TO_DATE, meaning the size of the snapshot is up-to-date.
        # Corresponds to the JSON property `storageBytesStatus`
        # @return [String]
        attr_accessor :storage_bytes_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @licenses = args[:licenses] if args.key?(:licenses)
          @name = args[:name] if args.key?(:name)
          @self_link = args[:self_link] if args.key?(:self_link)
          @source_disk = args[:source_disk] if args.key?(:source_disk)
          @source_disk_id = args[:source_disk_id] if args.key?(:source_disk_id)
          @status = args[:status] if args.key?(:status)
          @storage_bytes = args[:storage_bytes] if args.key?(:storage_bytes)
          @storage_bytes_status = args[:storage_bytes_status] if args.key?(:storage_bytes_status)
        end
      end
      
      # Contains a list of Snapshot resources.
      class SnapshotList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of Snapshot resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Snapshot>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # An SslCertificate resource. This resource provides a mechanism to upload an
      # SSL key and certificate to the load balancer to serve secure connections from
      # the user.
      class SslCertificate
        include Google::Apis::Core::Hashable
      
        # A local certificate file. The certificate must be in PEM format. The
        # certificate chain must be no greater than 5 certs long. The chain must include
        # at least one intermediate cert.
        # Corresponds to the JSON property `certificate`
        # @return [String]
        attr_accessor :certificate
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#sslCertificate for SSL
        # certificates.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A write-only private key in PEM format. Only insert RPCs will include this
        # field.
        # Corresponds to the JSON property `privateKey`
        # @return [String]
        attr_accessor :private_key
      
        # [Output only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate = args[:certificate] if args.key?(:certificate)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @private_key = args[:private_key] if args.key?(:private_key)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Contains a list of SslCertificate resources.
      class SslCertificateList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource. Defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of SslCertificate resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::SslCertificate>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A Subnetwork resource.
      class Subnetwork
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The gateway address for default routes to reach destination
        # addresses outside this subnetwork.
        # Corresponds to the JSON property `gatewayAddress`
        # @return [String]
        attr_accessor :gateway_address
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The range of internal addresses that are owned by this subnetwork. Provide
        # this property when you create the subnetwork. For example, 10.0.0.0/8 or 192.
        # 168.0.0/16. Ranges must be unique and non-overlapping within a network.
        # Corresponds to the JSON property `ipCidrRange`
        # @return [String]
        attr_accessor :ip_cidr_range
      
        # [Output Only] Type of the resource. Always compute#subnetwork for Subnetwork
        # resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the resource, provided by the client when initially creating the
        # resource. The name must be 1-63 characters long, and comply with RFC1035.
        # Specifically, the name must be 1-63 characters long and match the regular
        # expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must be
        # a lowercase letter, and all following characters must be a dash, lowercase
        # letter, or digit, except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The URL of the network to which this subnetwork belongs, provided by the
        # client when initially creating the subnetwork. Only networks that are in the
        # distributed mode can have subnetworks.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # URL of the region where the Subnetwork resides.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @gateway_address = args[:gateway_address] if args.key?(:gateway_address)
          @id = args[:id] if args.key?(:id)
          @ip_cidr_range = args[:ip_cidr_range] if args.key?(:ip_cidr_range)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class SubnetworkAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output] A map of scoped Subnetwork lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::SubnetworksScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#subnetworkAggregatedList for
        # aggregated lists of subnetworks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Contains a list of Subnetwork resources.
      class SubnetworkList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The Subnetwork resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Subnetwork>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#subnetworkList for lists of
        # subnetworks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class SubnetworksScopedList
        include Google::Apis::Core::Hashable
      
        # List of subnetworks contained in this scope.
        # Corresponds to the JSON property `subnetworks`
        # @return [Array<Google::Apis::ComputeV1::Subnetwork>]
        attr_accessor :subnetworks
      
        # An informational warning that appears when the list of addresses is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::SubnetworksScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subnetworks = args[:subnetworks] if args.key?(:subnetworks)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # An informational warning that appears when the list of addresses is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::SubnetworksScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # A set of instance tags.
      class Tags
        include Google::Apis::Core::Hashable
      
        # Specifies a fingerprint for this request, which is essentially a hash of the
        # metadata's contents and used for optimistic locking. The fingerprint is
        # initially generated by Compute Engine and changes after every request to
        # modify or update metadata. You must always provide an up-to-date fingerprint
        # hash in order to update or change metadata.
        # To see the latest fingerprint, make get() request to the instance.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # An array of tags. Each tag must be 1-63 characters long, and comply with
        # RFC1035.
        # Corresponds to the JSON property `items`
        # @return [Array<String>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # A TargetHttpProxy resource. This resource defines an HTTP proxy.
      class TargetHttpProxy
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of resource. Always compute#targetHttpProxy for target HTTP
        # proxies.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # URL to the UrlMap resource that defines the mapping from URL to the
        # BackendService.
        # Corresponds to the JSON property `urlMap`
        # @return [String]
        attr_accessor :url_map
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @self_link = args[:self_link] if args.key?(:self_link)
          @url_map = args[:url_map] if args.key?(:url_map)
        end
      end
      
      # A list of TargetHttpProxy resources.
      class TargetHttpProxyList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of TargetHttpProxy resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::TargetHttpProxy>]
        attr_accessor :items
      
        # Type of resource. Always compute#targetHttpProxyList for lists of target HTTP
        # proxies.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class TargetHttpsProxiesSetSslCertificatesRequest
        include Google::Apis::Core::Hashable
      
        # New set of SslCertificate resources to associate with this TargetHttpsProxy
        # resource. Currently exactly one SslCertificate resource must be specified.
        # Corresponds to the JSON property `sslCertificates`
        # @return [Array<String>]
        attr_accessor :ssl_certificates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ssl_certificates = args[:ssl_certificates] if args.key?(:ssl_certificates)
        end
      end
      
      # A TargetHttpsProxy resource. This resource defines an HTTPS proxy.
      class TargetHttpsProxy
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of resource. Always compute#targetHttpsProxy for target
        # HTTPS proxies.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # URLs to SslCertificate resources that are used to authenticate connections
        # between users and the load balancer. Currently, exactly one SSL certificate
        # must be specified.
        # Corresponds to the JSON property `sslCertificates`
        # @return [Array<String>]
        attr_accessor :ssl_certificates
      
        # A fully-qualified or valid partial URL to the UrlMap resource that defines the
        # mapping from URL to the BackendService. For example, the following are all
        # valid URLs for specifying a URL map:
        # - https://www.googleapis.compute/v1/projects/project/global/urlMaps/url-map
        # - projects/project/global/urlMaps/url-map
        # - global/urlMaps/url-map
        # Corresponds to the JSON property `urlMap`
        # @return [String]
        attr_accessor :url_map
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @self_link = args[:self_link] if args.key?(:self_link)
          @ssl_certificates = args[:ssl_certificates] if args.key?(:ssl_certificates)
          @url_map = args[:url_map] if args.key?(:url_map)
        end
      end
      
      # Contains a list of TargetHttpsProxy resources.
      class TargetHttpsProxyList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of TargetHttpsProxy resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::TargetHttpsProxy>]
        attr_accessor :items
      
        # Type of resource. Always compute#targetHttpsProxyList for lists of target
        # HTTPS proxies.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A TargetInstance resource. This resource defines an endpoint instance that
      # terminates traffic of certain protocols.
      class TargetInstance
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A URL to the virtual machine instance that handles traffic for this target
        # instance. When creating a target instance, you can provide the fully-qualified
        # URL or a valid partial URL to the desired virtual machine. For example, the
        # following are all valid URLs:
        # - https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/
        # instance
        # - projects/project/zones/zone/instances/instance
        # - zones/zone/instances/instance
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # [Output Only] The type of the resource. Always compute#targetInstance for
        # target instances.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # NAT option controlling how IPs are NAT'ed to the instance. Currently only
        # NO_NAT (default value) is supported.
        # Corresponds to the JSON property `natPolicy`
        # @return [String]
        attr_accessor :nat_policy
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] URL of the zone where the target instance resides.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @instance = args[:instance] if args.key?(:instance)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @nat_policy = args[:nat_policy] if args.key?(:nat_policy)
          @self_link = args[:self_link] if args.key?(:self_link)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # 
      class TargetInstanceAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A map of scoped target instance lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::TargetInstancesScopedList>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Contains a list of TargetInstance resources.
      class TargetInstanceList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of TargetInstance resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::TargetInstance>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class TargetInstancesScopedList
        include Google::Apis::Core::Hashable
      
        # List of target instances contained in this scope.
        # Corresponds to the JSON property `targetInstances`
        # @return [Array<Google::Apis::ComputeV1::TargetInstance>]
        attr_accessor :target_instances
      
        # Informational warning which replaces the list of addresses when the list is
        # empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::TargetInstancesScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_instances = args[:target_instances] if args.key?(:target_instances)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # Informational warning which replaces the list of addresses when the list is
        # empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::TargetInstancesScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # A TargetPool resource. This resource defines a pool of instances, associated
      # HttpHealthCheck resources, and the fallback target pool.
      class TargetPool
        include Google::Apis::Core::Hashable
      
        # This field is applicable only when the containing target pool is serving a
        # forwarding rule as the primary pool, and its failoverRatio field is properly
        # set to a value between [0, 1].
        # backupPool and failoverRatio together define the fallback behavior of the
        # primary target pool: if the ratio of the healthy instances in the primary pool
        # is at or below failoverRatio, traffic arriving at the load-balanced IP will be
        # directed to the backup pool.
        # In case where failoverRatio and backupPool are not set, or all the instances
        # in the backup pool are unhealthy, the traffic will be directed back to the
        # primary pool in the "force" mode, where traffic will be spread to the healthy
        # instances with the best effort, or to all instances when no instance is
        # healthy.
        # Corresponds to the JSON property `backupPool`
        # @return [String]
        attr_accessor :backup_pool
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # This field is applicable only when the containing target pool is serving a
        # forwarding rule as the primary pool (i.e., not as a backup pool to some other
        # target pool). The value of the field must be in [0, 1].
        # If set, backupPool must also be set. They together define the fallback
        # behavior of the primary target pool: if the ratio of the healthy instances in
        # the primary pool is at or below this number, traffic arriving at the load-
        # balanced IP will be directed to the backup pool.
        # In case where failoverRatio is not set or all the instances in the backup pool
        # are unhealthy, the traffic will be directed back to the primary pool in the "
        # force" mode, where traffic will be spread to the healthy instances with the
        # best effort, or to all instances when no instance is healthy.
        # Corresponds to the JSON property `failoverRatio`
        # @return [Float]
        attr_accessor :failover_ratio
      
        # A list of URLs to the HttpHealthCheck resource. A member instance in this pool
        # is considered healthy if and only if all specified health checks pass. An
        # empty list means all member instances will be considered healthy at all times.
        # Corresponds to the JSON property `healthChecks`
        # @return [Array<String>]
        attr_accessor :health_checks
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of resource URLs to the virtual machine instances serving this pool.
        # They must live in zones contained in the same region as this pool.
        # Corresponds to the JSON property `instances`
        # @return [Array<String>]
        attr_accessor :instances
      
        # [Output Only] Type of the resource. Always compute#targetPool for target pools.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] URL of the region where the target pool resides.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Sesssion affinity option, must be one of the following values:
        # NONE: Connections from the same client IP may go to any instance in the pool.
        # CLIENT_IP: Connections from the same client IP will go to the same instance in
        # the pool while that instance remains healthy.
        # CLIENT_IP_PROTO: Connections from the same client IP with the same IP protocol
        # will go to the same instance in the pool while that instance remains healthy.
        # Corresponds to the JSON property `sessionAffinity`
        # @return [String]
        attr_accessor :session_affinity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_pool = args[:backup_pool] if args.key?(:backup_pool)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @failover_ratio = args[:failover_ratio] if args.key?(:failover_ratio)
          @health_checks = args[:health_checks] if args.key?(:health_checks)
          @id = args[:id] if args.key?(:id)
          @instances = args[:instances] if args.key?(:instances)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @session_affinity = args[:session_affinity] if args.key?(:session_affinity)
        end
      end
      
      # 
      class TargetPoolAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource. Defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A map of scoped target pool lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::TargetPoolsScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#targetPoolAggregatedList for
        # aggregated lists of target pools.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class TargetPoolInstanceHealth
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `healthStatus`
        # @return [Array<Google::Apis::ComputeV1::HealthStatus>]
        attr_accessor :health_status
      
        # [Output Only] Type of resource. Always compute#targetPoolInstanceHealth when
        # checking the health of an instance.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_status = args[:health_status] if args.key?(:health_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # Contains a list of TargetPool resources.
      class TargetPoolList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource. Defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of TargetPool resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::TargetPool>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#targetPoolList for lists of
        # target pools.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class AddTargetPoolsHealthCheckRequest
        include Google::Apis::Core::Hashable
      
        # A list of HttpHealthCheck resources to add to the target pool.
        # Corresponds to the JSON property `healthChecks`
        # @return [Array<Google::Apis::ComputeV1::HealthCheckReference>]
        attr_accessor :health_checks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_checks = args[:health_checks] if args.key?(:health_checks)
        end
      end
      
      # 
      class AddTargetPoolsInstanceRequest
        include Google::Apis::Core::Hashable
      
        # A full or partial URL to an instance to add to this target pool. This can be a
        # full or partial URL. For example, the following are valid URLs:
        # - https://www.googleapis.com/compute/v1/projects/project-id/zones/zone/
        # instances/instance-name
        # - projects/project-id/zones/zone/instances/instance-name
        # - zones/zone/instances/instance-name
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::ComputeV1::InstanceReference>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
        end
      end
      
      # 
      class RemoveTargetPoolsHealthCheckRequest
        include Google::Apis::Core::Hashable
      
        # Health check URL to be removed. This can be a full or valid partial URL. For
        # example, the following are valid URLs:
        # - https://www.googleapis.com/compute/beta/projects/project/global/
        # httpHealthChecks/health-check
        # - projects/project/global/httpHealthChecks/health-check
        # - global/httpHealthChecks/health-check
        # Corresponds to the JSON property `healthChecks`
        # @return [Array<Google::Apis::ComputeV1::HealthCheckReference>]
        attr_accessor :health_checks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_checks = args[:health_checks] if args.key?(:health_checks)
        end
      end
      
      # 
      class RemoveTargetPoolsInstanceRequest
        include Google::Apis::Core::Hashable
      
        # URLs of the instances to be removed from target pool.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::ComputeV1::InstanceReference>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
        end
      end
      
      # 
      class TargetPoolsScopedList
        include Google::Apis::Core::Hashable
      
        # List of target pools contained in this scope.
        # Corresponds to the JSON property `targetPools`
        # @return [Array<Google::Apis::ComputeV1::TargetPool>]
        attr_accessor :target_pools
      
        # Informational warning which replaces the list of addresses when the list is
        # empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::TargetPoolsScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_pools = args[:target_pools] if args.key?(:target_pools)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # Informational warning which replaces the list of addresses when the list is
        # empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::TargetPoolsScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class TargetReference
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # Represents a Target VPN gateway resource.
      class TargetVpnGateway
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] A list of URLs to the ForwardingRule resources. ForwardingRules
        # are created using compute.forwardingRules.insert and associated to a VPN
        # gateway.
        # Corresponds to the JSON property `forwardingRules`
        # @return [Array<String>]
        attr_accessor :forwarding_rules
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of resource. Always compute#targetVpnGateway for target VPN
        # gateways.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # URL of the network to which this VPN gateway is attached. Provided by the
        # client when the VPN gateway is created.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # [Output Only] URL of the region where the target VPN gateway resides.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] The status of the VPN gateway.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output Only] A list of URLs to VpnTunnel resources. VpnTunnels are created
        # using compute.vpntunnels.insert method and associated to a VPN gateway.
        # Corresponds to the JSON property `tunnels`
        # @return [Array<String>]
        attr_accessor :tunnels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @forwarding_rules = args[:forwarding_rules] if args.key?(:forwarding_rules)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @status = args[:status] if args.key?(:status)
          @tunnels = args[:tunnels] if args.key?(:tunnels)
        end
      end
      
      # 
      class TargetVpnGatewayAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A map of scoped target vpn gateway lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::TargetVpnGatewaysScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#targetVpnGateway for target VPN
        # gateways.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Contains a list of TargetVpnGateway resources.
      class TargetVpnGatewayList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of TargetVpnGateway resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::TargetVpnGateway>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#targetVpnGateway for target VPN
        # gateways.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class TargetVpnGatewaysScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] List of target vpn gateways contained in this scope.
        # Corresponds to the JSON property `targetVpnGateways`
        # @return [Array<Google::Apis::ComputeV1::TargetVpnGateway>]
        attr_accessor :target_vpn_gateways
      
        # [Output Only] Informational warning which replaces the list of addresses when
        # the list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::TargetVpnGatewaysScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_vpn_gateways = args[:target_vpn_gateways] if args.key?(:target_vpn_gateways)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning which replaces the list of addresses when
        # the list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::TargetVpnGatewaysScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class TestFailure
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `actualService`
        # @return [String]
        attr_accessor :actual_service
      
        # 
        # Corresponds to the JSON property `expectedService`
        # @return [String]
        attr_accessor :expected_service
      
        # 
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # 
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actual_service = args[:actual_service] if args.key?(:actual_service)
          @expected_service = args[:expected_service] if args.key?(:expected_service)
          @host = args[:host] if args.key?(:host)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # A UrlMap resource. This resource defines the mapping from URL to the
      # BackendService resource, based on the "longest-match" of the URL's host and
      # path.
      class UrlMap
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # The URL of the BackendService resource if none of the hostRules match.
        # Corresponds to the JSON property `defaultService`
        # @return [String]
        attr_accessor :default_service
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Fingerprint of this resource. A hash of the contents stored in this object.
        # This field is used in optimistic locking. This field will be ignored when
        # inserting a UrlMap. An up-to-date fingerprint must be provided in order to
        # update the UrlMap.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # The list of HostRules to use against the URL.
        # Corresponds to the JSON property `hostRules`
        # @return [Array<Google::Apis::ComputeV1::HostRule>]
        attr_accessor :host_rules
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#urlMaps for url maps.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The list of named PathMatchers to use against the URL.
        # Corresponds to the JSON property `pathMatchers`
        # @return [Array<Google::Apis::ComputeV1::PathMatcher>]
        attr_accessor :path_matchers
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The list of expected URL mappings. Request to update this UrlMap will succeed
        # only if all of the test cases pass.
        # Corresponds to the JSON property `tests`
        # @return [Array<Google::Apis::ComputeV1::UrlMapTest>]
        attr_accessor :tests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @default_service = args[:default_service] if args.key?(:default_service)
          @description = args[:description] if args.key?(:description)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @host_rules = args[:host_rules] if args.key?(:host_rules)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @path_matchers = args[:path_matchers] if args.key?(:path_matchers)
          @self_link = args[:self_link] if args.key?(:self_link)
          @tests = args[:tests] if args.key?(:tests)
        end
      end
      
      # Contains a list of UrlMap resources.
      class UrlMapList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource. Set by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of UrlMap resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::UrlMap>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class UrlMapReference
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `urlMap`
        # @return [String]
        attr_accessor :url_map
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url_map = args[:url_map] if args.key?(:url_map)
        end
      end
      
      # Message for the expected URL mappings.
      class UrlMapTest
        include Google::Apis::Core::Hashable
      
        # Description of this test case.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Host portion of the URL.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # Path portion of the URL.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Expected BackendService resource the given URL should be mapped to.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @host = args[:host] if args.key?(:host)
          @path = args[:path] if args.key?(:path)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Message representing the validation result for a UrlMap.
      class UrlMapValidationResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `loadErrors`
        # @return [Array<String>]
        attr_accessor :load_errors
      
        # Whether the given UrlMap can be successfully loaded. If false, 'loadErrors'
        # indicates the reasons.
        # Corresponds to the JSON property `loadSucceeded`
        # @return [Boolean]
        attr_accessor :load_succeeded
        alias_method :load_succeeded?, :load_succeeded
      
        # 
        # Corresponds to the JSON property `testFailures`
        # @return [Array<Google::Apis::ComputeV1::TestFailure>]
        attr_accessor :test_failures
      
        # If successfully loaded, this field indicates whether the test passed. If false,
        # 'testFailures's indicate the reason of failure.
        # Corresponds to the JSON property `testPassed`
        # @return [Boolean]
        attr_accessor :test_passed
        alias_method :test_passed?, :test_passed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @load_errors = args[:load_errors] if args.key?(:load_errors)
          @load_succeeded = args[:load_succeeded] if args.key?(:load_succeeded)
          @test_failures = args[:test_failures] if args.key?(:test_failures)
          @test_passed = args[:test_passed] if args.key?(:test_passed)
        end
      end
      
      # 
      class ValidateUrlMapsRequest
        include Google::Apis::Core::Hashable
      
        # A UrlMap resource. This resource defines the mapping from URL to the
        # BackendService resource, based on the "longest-match" of the URL's host and
        # path.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::ComputeV1::UrlMap]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # 
      class ValidateUrlMapsResponse
        include Google::Apis::Core::Hashable
      
        # Message representing the validation result for a UrlMap.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::ComputeV1::UrlMapValidationResult]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result = args[:result] if args.key?(:result)
        end
      end
      
      # The location in Cloud Storage and naming method of the daily usage report.
      # Contains bucket_name and report_name prefix.
      class UsageExportLocation
        include Google::Apis::Core::Hashable
      
        # The name of an existing bucket in Cloud Storage where the usage report object
        # is stored. The Google Service Account is granted write access to this bucket.
        # This can either be the bucket name by itself, such as example-bucket, or the
        # bucket name with gs:// or https://storage.googleapis.com/ in front of it, such
        # as gs://example-bucket.
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        # An optional prefix for the name of the usage report object stored in
        # bucketName. If not supplied, defaults to usage. The report is stored as a CSV
        # file named report_name_prefix_gce_YYYYMMDD.csv where YYYYMMDD is the day of
        # the usage according to Pacific Time. If you supply a prefix, it should conform
        # to Cloud Storage object naming conventions.
        # Corresponds to the JSON property `reportNamePrefix`
        # @return [String]
        attr_accessor :report_name_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_name = args[:bucket_name] if args.key?(:bucket_name)
          @report_name_prefix = args[:report_name_prefix] if args.key?(:report_name_prefix)
        end
      end
      
      # 
      class VpnTunnel
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] Detailed status message for the VPN tunnel.
        # Corresponds to the JSON property `detailedStatus`
        # @return [String]
        attr_accessor :detailed_status
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # IKE protocol version to use when establishing the VPN tunnel with peer VPN
        # gateway. Acceptable IKE versions are 1 or 2. Default version is 2.
        # Corresponds to the JSON property `ikeVersion`
        # @return [Fixnum]
        attr_accessor :ike_version
      
        # [Output Only] Type of resource. Always compute#vpnTunnel for VPN tunnels.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Local traffic selector to use when establishing the VPN tunnel with peer VPN
        # gateway. The value should be a CIDR formatted string, for example: 192.168.0.0/
        # 16. The ranges should be disjoint.
        # Corresponds to the JSON property `localTrafficSelector`
        # @return [Array<String>]
        attr_accessor :local_traffic_selector
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # IP address of the peer VPN gateway.
        # Corresponds to the JSON property `peerIp`
        # @return [String]
        attr_accessor :peer_ip
      
        # [Output Only] URL of the region where the VPN tunnel resides.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Shared secret used to set the secure session between the Cloud VPN gateway and
        # the peer VPN gateway.
        # Corresponds to the JSON property `sharedSecret`
        # @return [String]
        attr_accessor :shared_secret
      
        # Hash of the shared secret.
        # Corresponds to the JSON property `sharedSecretHash`
        # @return [String]
        attr_accessor :shared_secret_hash
      
        # [Output Only] The status of the VPN tunnel.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # URL of the VPN gateway with which this VPN tunnel is associated. Provided by
        # the client when the VPN tunnel is created.
        # Corresponds to the JSON property `targetVpnGateway`
        # @return [String]
        attr_accessor :target_vpn_gateway
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @detailed_status = args[:detailed_status] if args.key?(:detailed_status)
          @id = args[:id] if args.key?(:id)
          @ike_version = args[:ike_version] if args.key?(:ike_version)
          @kind = args[:kind] if args.key?(:kind)
          @local_traffic_selector = args[:local_traffic_selector] if args.key?(:local_traffic_selector)
          @name = args[:name] if args.key?(:name)
          @peer_ip = args[:peer_ip] if args.key?(:peer_ip)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @shared_secret = args[:shared_secret] if args.key?(:shared_secret)
          @shared_secret_hash = args[:shared_secret_hash] if args.key?(:shared_secret_hash)
          @status = args[:status] if args.key?(:status)
          @target_vpn_gateway = args[:target_vpn_gateway] if args.key?(:target_vpn_gateway)
        end
      end
      
      # 
      class VpnTunnelAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A map of scoped vpn tunnel lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::VpnTunnelsScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#vpnTunnel for VPN tunnels.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Contains a list of VpnTunnel resources.
      class VpnTunnelList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of VpnTunnel resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::VpnTunnel>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#vpnTunnel for VPN tunnels.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class VpnTunnelsScopedList
        include Google::Apis::Core::Hashable
      
        # List of vpn tunnels contained in this scope.
        # Corresponds to the JSON property `vpnTunnels`
        # @return [Array<Google::Apis::ComputeV1::VpnTunnel>]
        attr_accessor :vpn_tunnels
      
        # Informational warning which replaces the list of addresses when the list is
        # empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::VpnTunnelsScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @vpn_tunnels = args[:vpn_tunnels] if args.key?(:vpn_tunnels)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # Informational warning which replaces the list of addresses when the list is
        # empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::VpnTunnelsScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # A Zone resource.
      class Zone
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # Deprecation status for a public resource.
        # Corresponds to the JSON property `deprecated`
        # @return [Google::Apis::ComputeV1::DeprecationStatus]
        attr_accessor :deprecated
      
        # [Output Only] Textual description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#zone for zones.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Full URL reference to the region which hosts the zone.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Status of the zone, either UP or DOWN.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @deprecated = args[:deprecated] if args.key?(:deprecated)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Contains a list of zone resources.
      class ZoneList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of Zone resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Zone>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
    end
  end
end
