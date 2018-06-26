module DojoWidgets
  # Since the accordion on the web page is a div, the Accordion must inherit from
  # Page Object's Div class. Whenever we create a new element type, it must inherit
  # from either Page Object's Element or one of Element's subclasses.
  class Accordion < PageObject::Elements::Div
    def select_panel(panel)
      span_element(class: 'dijitAccordionText', text: panel).click
    end

    def panel_for(panel)
      panels = div_elements(class: 'dijitAccordionInnerContainer')
      panel = panels.select { |panel_option| panel_option.span(class: 'dijitAccordionText').text.eql? panel }.pop
      panel.div(xpath: "//div[contains(@class, 'dijitContentPane')]")
    end
  end
end