.class Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity$1;
.super Ljava/lang/Thread;
.source "ServiceIntervalTemplateListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity$1;->this$0:Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity;

    iput-object p2, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity$1;->val$resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->BASE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;->TEMPLATES:[Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 78
    return-void
.end method
