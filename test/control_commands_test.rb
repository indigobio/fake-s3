require 'test/test_helper'
require 'aws-sdk-v1'

class ControlCommandsTest < Test::Unit::TestCase

  def setup
    @test_root = File.expand_path('../../test_root', __FILE__)
    clear_test_root
    @file_store = FakeS3::FileStore.new(@test_root, false)
    @s3 = AWS::S3.new(:access_key_id => '123',
                      :secret_access_key => 'abc',
                      :s3_endpoint => 'localhost',
                      :s3_port => 10453,
                      :use_ssl => false)
    add_documents_to_s3
  end

  def test_list_all
    expected =
        "BUCKET     \tOBJECT_NAME \tSTORAGE_CLASS \tSTATE       \n" +
            "bucket_one \tsome/key/1  \tSTANDARD      \tIN_STANDARD \n" +
            "bucket_one \tsome/key/2  \tSTANDARD      \tIN_STANDARD \n" +
            "bucket_two \tsome/key/3  \tSTANDARD      \tIN_STANDARD \n" +
            "bucket_two \tsome/key/4  \tSTANDARD      \tIN_STANDARD "
    assert_equal expected, FakeS3::FileStore.new(@test_root, false).list_all
  end

  def test_to_glacier
    file_store = FakeS3::FileStore.new @test_root, false
    assert_equal 'STANDARD', file_store.get_object('bucket_one', 'some/key/1', nil).storage_class
    file_store.to_glacier 'bucket_one', 'some/key/1'
    obj = file_store.get_object('bucket_one', 'some/key/1', nil)
    assert_equal 'GLACIER', obj.storage_class
    assert_equal 'IN_GLACIER', obj.state
  end

  def test_to_standard
    file_store = FakeS3::FileStore.new @test_root, false
    file_store.to_glacier 'bucket_one', 'some/key/1'
    assert_equal 'GLACIER', file_store.get_object('bucket_one', 'some/key/1', nil).storage_class
    file_store.to_standard 'bucket_one', 'some/key/1'
    obj = file_store.get_object('bucket_one', 'some/key/1', nil)
    assert_equal 'STANDARD', obj.storage_class
    assert_equal 'IN_STANDARD', obj.state
  end

  def test_to_restored_from_glacier
    file_store = FakeS3::FileStore.new @test_root, false
    file_store.to_glacier 'bucket_one', 'some/key/1'
    file_store.to_restored_from_glacier 'bucket_one', 'some/key/1'
    obj = file_store.get_object('bucket_one', 'some/key/1', nil)
    assert_equal 'GLACIER', obj.storage_class
    assert_equal 'RESTORED', obj.state
  end

  def test_to_restored_expired
    file_store = FakeS3::FileStore.new @test_root, false
    file_store.to_glacier 'bucket_one', 'some/key/1'
    file_store.to_restored_expired 'bucket_one', 'some/key/1'
    obj = file_store.get_object('bucket_one', 'some/key/1', nil)
    assert_equal 'GLACIER', obj.storage_class
    assert_equal 'RESTORED_COPY_EXPIRED', obj.state
  end

  def test_to_restoring_in_progress
    file_store = FakeS3::FileStore.new @test_root, false
    file_store.to_restoring_in_progress 'bucket_one', 'some/key/1', 5
    obj = file_store.get_object('bucket_one', 'some/key/1', nil)
    assert_equal 'GLACIER', obj.storage_class
    assert_equal 'RESTORING', obj.state
    assert_equal 5, obj.days
  end

  def add_documents_to_s3
    key_count = 0
    %w(bucket_one bucket_two).each do |bucket_name|
      bucket = @s3.buckets.create(bucket_name)
      2.times do
        bucket.objects.create("some/key/#{key_count += 1}", 'some data')
      end
    end
  end


  def clear_test_root
    FileUtils.rm_rf @test_root
  end
end
