.class Lcom/evancharlton/mileage/FillupListActivity$2;
.super Ljava/lang/Object;
.source "FillupListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/FillupListActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/FillupListActivity;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/FillupListActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/evancharlton/mileage/FillupListActivity$2;->this$0:Lcom/evancharlton/mileage/FillupListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "row"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "list":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupListActivity$2;->this$0:Lcom/evancharlton/mileage/FillupListActivity;

    iget-object v1, p0, Lcom/evancharlton/mileage/FillupListActivity$2;->this$0:Lcom/evancharlton/mileage/FillupListActivity;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/FillupListActivity;->getVehicle()Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/evancharlton/mileage/FillupListActivity;->access$102(Lcom/evancharlton/mileage/FillupListActivity;Lcom/evancharlton/mileage/dao/Vehicle;)Lcom/evancharlton/mileage/dao/Vehicle;

    .line 80
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupListActivity$2;->this$0:Lcom/evancharlton/mileage/FillupListActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/FillupListActivity;->access$000(Lcom/evancharlton/mileage/FillupListActivity;)Lcom/evancharlton/mileage/adapters/FillupAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/evancharlton/mileage/FillupListActivity$2;->this$0:Lcom/evancharlton/mileage/FillupListActivity;

    invoke-static {v1}, Lcom/evancharlton/mileage/FillupListActivity;->access$100(Lcom/evancharlton/mileage/FillupListActivity;)Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/adapters/FillupAdapter;->setVehicle(Lcom/evancharlton/mileage/dao/Vehicle;)V

    .line 83
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupListActivity$2;->this$0:Lcom/evancharlton/mileage/FillupListActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/FillupListActivity;->access$200(Lcom/evancharlton/mileage/FillupListActivity;)V

    .line 84
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
