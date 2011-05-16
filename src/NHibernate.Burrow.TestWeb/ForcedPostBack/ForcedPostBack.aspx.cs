using System;
using System.Threading;
using System.Web.UI;

public partial class ForcedPostBack : Page
{
    protected void Page_Load(object sender, EventArgs e) {}

	protected void btnForce_Click(object sender, EventArgs e) {
		
		Show();
		time1.Enabled = true;
	}

	protected void btnClose_Click(object sender, EventArgs e) {
		time1.Enabled = false;
		Hide();
	}

	protected void ticked(object sender, EventArgs e) {
		Thread.Sleep(1000);
		upInner.Update();
	}

	private void Show()
	{
		upMain.Update();
		divInner.Visible = true;

		ModalPopupExtender1.Show();
	}

	private void Hide()
	{
		ModalPopupExtender1.Hide();
		upMain.Update();
		divInner.Visible = false;
	}
}