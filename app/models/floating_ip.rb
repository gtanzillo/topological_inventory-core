require "archived_concern"

class FloatingIp < ApplicationRecord
  include ArchivedConcern

  belongs_to :tenant
  belongs_to :source
  belongs_to :source_region, :optional => true
  belongs_to :subscription, :optional => true
  belongs_to :orchestration_stack, :optional => true

  belongs_to :network_adapter, :optional => true
  belongs_to :network, :optional => true

  has_many :floating_ip_tags

  acts_as_tenant(:tenant)
  acts_as_taggable_on
end
