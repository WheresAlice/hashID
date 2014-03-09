require_relative '../lib/hashid'
require 'minitest/autorun'

describe Hashid do
  it 'has a 130 hash formats' do
    assert_equal 130, Hashid::HASHES.flatten.length
  end
  
  it 'can identify MD5 hashes' do
    require 'digest/md5'
    assert_includes Hashid.HashID(Digest::MD5.hexdigest('alice')), 'MD5'
  end
  
  it 'can identify MD5 hashes with the binary' do
    output = `#{File.join(File.dirname(__FILE__), '../bin/')}hashid 6384e2b2184bcbf58eccf10ca7a6563c`
    assert_includes output, 'MD5'
  end

  it 'gives an error message if no hash is given' do
    output = `#{File.join(File.dirname(__FILE__), '../bin/')}hashid`
    assert_includes output, 'Usage:'
  end
end