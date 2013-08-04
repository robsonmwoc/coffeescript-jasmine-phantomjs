#= require app/views/dashboard/dashboard_show_view
describe 'Dashboard.Show', ->
  describe 'render()', ->
    it 'should render a div with id=metal and class=super-metal', ->
      view = new App.Dashboard.Show()
      view_element = view.render().$el

      expect( view_element.attr("id") ).toBe "metal"
      expect( view_element.attr("class") ).toBe "super-metal"

    it 'should be a backbone view', ->
      view = new App.Dashboard.Show()

      expect( true ).toBeTruethy
