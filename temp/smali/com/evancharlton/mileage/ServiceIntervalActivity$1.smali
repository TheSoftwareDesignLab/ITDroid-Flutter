.class Lcom/evancharlton/mileage/ServiceIntervalActivity$1;
.super Ljava/lang/Object;
.source "ServiceIntervalActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/ServiceIntervalActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/ServiceIntervalActivity;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/ServiceIntervalActivity;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity$1;->this$0:Lcom/evancharlton/mileage/ServiceIntervalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .local p1, "list":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 82
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity$1;->this$0:Lcom/evancharlton/mileage/ServiceIntervalActivity;

    invoke-static {v0, p4, p5}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->access$000(Lcom/evancharlton/mileage/ServiceIntervalActivity;J)V

    .line 85
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity$1;->this$0:Lcom/evancharlton/mileage/ServiceIntervalActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->access$100(Lcom/evancharlton/mileage/ServiceIntervalActivity;)Lcom/evancharlton/mileage/dao/ServiceInterval;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evancharlton/mileage/dao/ServiceInterval;->isExistingObject()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "odometer"

    aput-object v0, v2, v7

    .line 89
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "vehicle_id = ?"

    .line 90
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 93
    .local v4, "args":[Ljava/lang/String;
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity$1;->this$0:Lcom/evancharlton/mileage/ServiceIntervalActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    const-string v5, "odometer desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 96
    .local v6, "fillupsCursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 97
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 98
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity$1;->this$0:Lcom/evancharlton/mileage/ServiceIntervalActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->access$200(Lcom/evancharlton/mileage/ServiceIntervalActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 102
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v6    # "fillupsCursor":Landroid/database/Cursor;
    :cond_1
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
    .line 106
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
