require 'spec_helper'
hiera_file = 'spec/fixtures/hiera/hiera.yaml'   # <- required to find hiera configuration file

# test our main class (init.pp)
describe 'ssh', :type => :class  do

    # test without hiera lookup (using class defaults)
    context 'without hiera data' do
        it { should contain_class('ssh') }                        # <- check for classes included
        it { should contain_class('stdmodule').with_allow__root('true') }    # <- check for classes with parameters
    end

    # test with explicit params given on class definition
    context 'with explicit data' do
        let(:params) {{                                                 # <- set explizit params
            :allow_root => 'false'
        }}
        it { should contain_class('ssh').with_allow__root('false') }
    end

    # test with explicit hiera lookup
    context 'with explicit hiera lookup' do
        # set hiera_config
        let (:hiera_config) { hiera_file }

        hiera = Hiera.new(:config => hiera_file)                        # <- use Hiera ruby class
        variable = hiera.lookup('ssh::allow_root', nil, nil)         # <- do hiera lookup
        let (:params) {{
            :allow_root => variable                                        # <- set parameter to hiera lookup
        }}
        it { should contain_class('ssh').with_allow__root(variable) }
    end
end
