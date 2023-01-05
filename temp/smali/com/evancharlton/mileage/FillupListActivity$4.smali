.class Lcom/evancharlton/mileage/FillupListActivity$4;
.super Ljava/lang/Object;
.source "FillupListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/FillupListActivity;->showDeleteDialog(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/FillupListActivity;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/FillupListActivity;J)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/evancharlton/mileage/FillupListActivity$4;->this$0:Lcom/evancharlton/mileage/FillupListActivity;

    iput-wide p2, p0, Lcom/evancharlton/mileage/FillupListActivity$4;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 146
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/evancharlton/mileage/FillupListActivity$4;->val$id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 147
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/evancharlton/mileage/FillupListActivity$4;->this$0:Lcom/evancharlton/mileage/FillupListActivity;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/FillupListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 148
    return-void
.end method
