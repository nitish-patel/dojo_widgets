# The main implementation of the gem goes in this file.

# We require page-object as we are registering a new element type i.e dojo_accordion to page-object.
require "page-object"
require "dojo_widgets/version"
require "dojo_widgets/accordion"

module DojoWidgets
  # Here we are registering/adding the dojo_accordion element with page-object.
  # The first parameter is the method we would like to add. The second parameter
  # is the class that represents the element and the last parameter is the element
  # type to look out for when locating the element on the page.
  PageObject.register_widget(:dojo_accordion, DojoWidgets::Accordion, 'div')
end
