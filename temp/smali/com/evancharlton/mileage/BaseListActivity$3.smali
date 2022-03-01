.class Lcom/evancharlton/mileage/BaseListActivity$3;
.super Ljava/lang/Object;
.source "BaseListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/BaseListActivity;->handleContextMenuSelection(Landroid/content/Intent;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/BaseListActivity;

.field final synthetic val$itemId:J


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/BaseListActivity;J)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/evancharlton/mileage/BaseListActivity$3;->this$0:Lcom/evancharlton/mileage/BaseListActivity;

    iput-wide p2, p0, Lcom/evancharlton/mileage/BaseListActivity$3;->val$itemId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 205
    iget-object v0, p0, Lcom/evancharlton/mileage/BaseListActivity$3;->this$0:Lcom/evancharlton/mileage/BaseListActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/BaseListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/evancharlton/mileage/BaseListActivity$3;->this$0:Lcom/evancharlton/mileage/BaseListActivity;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/BaseListActivity;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/evancharlton/mileage/BaseListActivity$3;->val$itemId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/evancharlton/mileage/BaseListActivity$3;->this$0:Lcom/evancharlton/mileage/BaseListActivity;

    iget-wide v1, p0, Lcom/evancharlton/mileage/BaseListActivity$3;->val$itemId:J

    invoke-virtual {v0, v1, v2}, Lcom/evancharlton/mileage/BaseListActivity;->itemDeleted(J)V

    .line 209
    return-void
.end method
