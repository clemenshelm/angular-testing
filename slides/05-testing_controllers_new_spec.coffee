# Testing Controllers

PasswordController = ->
  $message = $('.password span.message')
  $input = $('.password input')
  strength = null

  @grade = ->
    $message.removeClass(strength)
    password = $input.val()

    strength = 'weak' if password.length <= 3

    $message
     .addClass(strength)
     .text(strength)

  return this

describe "the password controller", ->
  it "considers a 3 letter password weak", ->
    input = $('<input type="text"/>')
    span = $('<span class="message">')
    $('body').html('<div class="password">')
      .find('div')
        .append(input)
        .append(span)
    controller = new PasswordController();
    input.val('abc');
    controller.grade();
    expect(span.text()).toEqual('weak');
    $('body').empty();
