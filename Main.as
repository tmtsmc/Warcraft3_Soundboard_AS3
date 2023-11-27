package  {
	import spark.components.ViewNavigatorApplication;
	import view.HomeView;
	/**
	 * @author tmtsmc
	 */
	public class Main extends ViewNavigatorApplication {
		
		public function Main() {
			this.firstView = HomeView;
			this.controlBarVisible = true;
		}
	}
}