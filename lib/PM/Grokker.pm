package PM::Grokker;
use XML::Rabbit::Root;

has_xpath_object_list 'groups' => '/perl_mongers/group' => 'PM::Grokker::Group';

finalize_class();