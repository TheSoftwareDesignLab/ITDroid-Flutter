.class Lcom/evancharlton/mileage/ExportActivity$1;
.super Ljava/lang/Object;
.source "ExportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/ExportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/ExportActivity;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/ExportActivity;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/evancharlton/mileage/ExportActivity$1;->this$0:Lcom/evancharlton/mileage/ExportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/evancharlton/mileage/ExportActivity$1;->this$0:Lcom/evancharlton/mileage/ExportActivity;

    invoke-static {}, Lcom/evancharlton/mileage/ExportActivity;->access$000()[Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/evancharlton/mileage/ExportActivity$1;->this$0:Lcom/evancharlton/mileage/ExportActivity;

    invoke-static {v3}, Lcom/evancharlton/mileage/ExportActivity;->access$100(Lcom/evancharlton/mileage/ExportActivity;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "filename"

    iget-object v2, p0, Lcom/evancharlton/mileage/ExportActivity$1;->this$0:Lcom/evancharlton/mileage/ExportActivity;

    invoke-static {v2}, Lcom/evancharlton/mileage/ExportActivity;->access$200(Lcom/evancharlton/mileage/ExportActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/evancharlton/mileage/ExportActivity$1;->this$0:Lcom/evancharlton/mileage/ExportActivity;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/ExportActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    iget-object v1, p0, Lcom/evancharlton/mileage/ExportActivity$1;->this$0:Lcom/evancharlton/mileage/ExportActivity;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/ExportActivity;->finish()V

    .line 63
    return-void
.end method
