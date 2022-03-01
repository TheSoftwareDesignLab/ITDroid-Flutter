.class Lcom/evancharlton/mileage/VehicleStatisticsActivity$2;
.super Ljava/lang/Object;
.source "VehicleStatisticsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 133
    iput-object p1, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity$2;->this$0:Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 136
    .local p1, "list":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity$2;->this$0:Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-static {v3}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->access$400(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/evancharlton/mileage/adapters/VehicleStatisticsAdapter;->getNumHeadersAbove(I)I

    move-result v3

    sub-int/2addr p3, v3

    .line 137
    sget-object v3, Lcom/evancharlton/mileage/provider/Statistics;->STATISTICS:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evancharlton/mileage/provider/Statistic;

    .line 138
    .local v1, "statistic":Lcom/evancharlton/mileage/provider/Statistic;
    invoke-virtual {v1}, Lcom/evancharlton/mileage/provider/Statistic;->getChartClass()Ljava/lang/Class;

    move-result-object v2

    .line 139
    .local v2, "target":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/evancharlton/mileage/ChartActivity;>;"
    if-eqz v2, :cond_0

    .line 140
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity$2;->this$0:Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "vehicle_id"

    iget-object v4, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity$2;->this$0:Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-static {v4}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->access$000(Lcom/evancharlton/mileage/VehicleStatisticsActivity;)Lcom/evancharlton/mileage/dao/Vehicle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/evancharlton/mileage/dao/Vehicle;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v3, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity$2;->this$0:Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    invoke-virtual {v3, v0}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v3, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity$2;->this$0:Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    iget-object v4, p0, Lcom/evancharlton/mileage/VehicleStatisticsActivity$2;->this$0:Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    const v5, 0x7f070028

    invoke-virtual {v4, v5}, Lcom/evancharlton/mileage/VehicleStatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
