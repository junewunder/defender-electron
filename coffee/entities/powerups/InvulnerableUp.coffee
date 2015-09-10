Powerup = require './Powerup.coffee'
GLOBALS = require '../../globals.coffee'


class InvulnerableUp extends Powerup
  constructor: (x, y) ->
    super x, y

    @trigger = GLOBALS.DEFENDER_INVULNERABLE
    @args =
      updates: 200
    @probability = GLOBALS.POWERUP.INVULNERABLEUP.PROBABILITY

  makeBody: () =>
    @body = new PointText(
      point: [@pos.x + 7, @pos.y - 7],
      content: '★',
      fillColor: '#f1d317',
      fontFamily: 'Courier New',
      fontSize: 25
    )

module.exports = InvulnerableUp
