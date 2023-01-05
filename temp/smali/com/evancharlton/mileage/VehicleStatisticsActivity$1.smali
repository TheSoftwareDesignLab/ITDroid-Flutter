.class Lcom/evancharlton/mileage/VehicleStatisticsActivity$1;
.super Ljava/lang/Object;
.source "VehicleStatisticsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/VehicleStatisticsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/VehicleStatisticsActivity;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity$1;->this$0:Lcom/evancharlton/mileage/VehicleStatisticsActivity;

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
    .line 118
    .local p1, "list":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity$1;->this$0:Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->access$000(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v0

    cmp-long v0, v0, p4

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity$1;->this$0:Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->access$100(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)V

    .line 120
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity$1;->this$0:Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->access$200(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)V

    .line 121
    iget-object v0, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity$1;->this$0:Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->access$300(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)V

    .line 123
    :cond_0
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
    .line 127
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
