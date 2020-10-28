#
# Load Firehose assets into RedisGraph
#
# Each method returns an array of Cypher queries
#
class AWSLoader::Firehose < AwsGraphDbLoader
  def stream
    node = 'AWS_FIREHOSE_STREAM'
    q = []

    # stream node
    q.push(_upsert({ node: node, id: @name }))

    q
  end
end
