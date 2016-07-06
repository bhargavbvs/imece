module Timestamp
  ##################################################################################
  # The timestamps used in the service are of the format "strict_date_time", i.e., #
  # "yyyy-MM-dd'T'HH:mm:ssZZ". This module has been written for converting all     #                                                                               
  # time stamps into the desired format. That is how Elasticsearch is made to      #
  # store times.                                                                   #
  ##################################################################################

  def self.time
    Time.now.to_i
  end

end
