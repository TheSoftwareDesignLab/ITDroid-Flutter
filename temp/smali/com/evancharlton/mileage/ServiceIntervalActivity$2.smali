.class Lcom/evancharlton/mileage/ServiceIntervalActivity$2;
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
    .line 109
    iput-object p1, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity$2;->this$0:Lcom/evancharlton/mileage/ServiceIntervalActivity;

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
    const/4 v3, 0x0

    .line 112
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v2, "intervals/templates"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 115
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {v1, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 116
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity$2;->this$0:Lcom/evancharlton/mileage/ServiceIntervalActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 119
    .local v6, "intervalCursor":Landroid/database/Cursor;
    new-instance v7, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;

    invoke-direct {v7, v6}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;-><init>(Landroid/database/Cursor;)V

    .line 120
    .local v7, "template":Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 123
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity$2;->this$0:Lcom/evancharlton/mileage/ServiceIntervalActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->access$300(Lcom/evancharlton/mileage/ServiceIntervalActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v7}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity$2;->this$0:Lcom/evancharlton/mileage/ServiceIntervalActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->access$400(Lcom/evancharlton/mileage/ServiceIntervalActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v7}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity$2;->this$0:Lcom/evancharlton/mileage/ServiceIntervalActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->access$500(Lcom/evancharlton/mileage/ServiceIntervalActivity;)Lcom/evancharlton/mileage/views/DistanceDelta;

    move-result-object v0

    invoke-virtual {v7}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->getDistance()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/evancharlton/mileage/views/DistanceDelta;->setDelta(J)V

    .line 126
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalActivity$2;->this$0:Lcom/evancharlton/mileage/ServiceIntervalActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/ServiceIntervalActivity;->access$600(Lcom/evancharlton/mileage/ServiceIntervalActivity;)Lcom/evancharlton/mileage/views/DateDelta;

    move-result-object v0

    invoke-virtual {v7}, Lcom/evancharlton/mileage/dao/ServiceIntervalTemplate;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/evancharlton/mileage/views/DateDelta;->setDelta(J)V

    .line 127
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
    .line 131
    .local p1, "list":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
