.class Lcom/evancharlton/mileage/FillupListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "FillupListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/FillupListActivity;
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
    .line 42
    iput-object p1, p0, Lcom/evancharlton/mileage/FillupListActivity$1;->this$0:Lcom/evancharlton/mileage/FillupListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupListActivity$1;->this$0:Lcom/evancharlton/mileage/FillupListActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/FillupListActivity;->access$000(Lcom/evancharlton/mileage/FillupListActivity;)Lcom/evancharlton/mileage/adapters/FillupAdapter;

    move-result-object v0

    const-string v1, "average_economy"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/evancharlton/mileage/adapters/FillupAdapter;->calculationFinished(D)V

    .line 47
    return-void
.end method
