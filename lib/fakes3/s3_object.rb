module FakeS3
  class S3Object
    include Comparable
    attr_accessor :name,:size,:creation_date,:modified_date,:md5,:io,:content_type,:content_disposition,:content_encoding,:custom_metadata,:cache_control
    attr_accessor :storage_class,:restore_expiration_date,:state,:days

    module StorageClass
      STANDARD = 'STANDARD'
      REDUCED_REDUNDANCY = 'REDUCED_REDUNDANCY'
      GLACIER = 'GLACIER'
    end

    module State
      IN_STANDARD = 'IN_STANDARD'
      IN_GLACIER = 'IN_GLACIER'
      RESTORING = 'RESTORING'
      RESTORED = 'RESTORED'
      RESTORED_COPY_EXPIRED = 'RESTORED_COPY_EXPIRED'
    end

    def hash
      @name.hash
    end

    def eql?(object)
      object.is_a?(self.class) ? (@name == object.name) : false
    end

    # Sort by the object's name
    def <=>(object)
      object.is_a?(self.class) ? (@name <=> object.name) : nil
    end
  end
end
