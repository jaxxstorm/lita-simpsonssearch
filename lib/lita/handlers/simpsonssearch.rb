# Lita Simpsons search plugin
module Lita
  # Handlers module
  module Handlers
    # Main handler
    class Simpsonssearch < Handler
      route(
        /^(?:simpsons)(?:\s+me|\ssearch)(.*)/i,
        :simpsons_search,
        command: true,
        help: {
          'simpsons (search|me)' => 'Return a simpsons image from frinkiac.com'
        })
      def simpsons_search(response)
        query = response.matches[0][0]
        image = Frinkiac::Screencap.random(query)
        response.reply(image.meme_url)
      end
      Lita.register_handler(self)
    end
  end
end
