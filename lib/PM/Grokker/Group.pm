package PM::Grokker::Group;
use XML::Rabbit;

has_xpath_value 'id' => './@id';
has_xpath_value 'status' => './@status';
has_xpath_value 'name' => './name';
has_xpath_value 'date' => './date';
has_xpath_value 'date_type' => './date/@type';

finalize_class();