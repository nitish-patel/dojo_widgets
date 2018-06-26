class DojoDemoPage
  include PageObject

  page_url FigNewton.base_url

  dojo_accordion(:the_accordion, :id => 'leftAccordion')

  def initialize_page
    wait_until(10) do
      not div_element(:id => 'loader').visible?
    end
  end

  def the_accordion
    the_accordion_element
  end
end