.class Lcom/evancharlton/mileage/ImportExportActivity$1;
.super Ljava/lang/Object;
.source "ImportExportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/ImportExportActivity;->map(ILjava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/ImportExportActivity;

.field final synthetic val$cls:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/ImportExportActivity;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/evancharlton/mileage/ImportExportActivity$1;->this$0:Lcom/evancharlton/mileage/ImportExportActivity;

    iput-object p2, p0, Lcom/evancharlton/mileage/ImportExportActivity$1;->val$cls:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportExportActivity$1;->this$0:Lcom/evancharlton/mileage/ImportExportActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/evancharlton/mileage/ImportExportActivity$1;->this$0:Lcom/evancharlton/mileage/ImportExportActivity;

    iget-object v3, p0, Lcom/evancharlton/mileage/ImportExportActivity$1;->val$cls:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/ImportExportActivity;->startActivity(Landroid/content/Intent;)V

    .line 35
    return-void
.end method
