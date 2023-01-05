.class Lcom/evancharlton/mileage/ImportActivity$1;
.super Ljava/lang/Object;
.source "ImportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/ImportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/ImportActivity;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/ImportActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/evancharlton/mileage/ImportActivity$1;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/evancharlton/mileage/ImportActivity$1;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-static {}, Lcom/evancharlton/mileage/ImportActivity;->access$000()[Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/evancharlton/mileage/ImportActivity$1;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-static {v3}, Lcom/evancharlton/mileage/ImportActivity;->access$100(Lcom/evancharlton/mileage/ImportActivity;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "filename"

    iget-object v2, p0, Lcom/evancharlton/mileage/ImportActivity$1;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-static {v2}, Lcom/evancharlton/mileage/ImportActivity;->access$200(Lcom/evancharlton/mileage/ImportActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "wipe data"

    iget-object v2, p0, Lcom/evancharlton/mileage/ImportActivity$1;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-static {v2}, Lcom/evancharlton/mileage/ImportActivity;->access$300(Lcom/evancharlton/mileage/ImportActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/evancharlton/mileage/ImportActivity$1;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/ImportActivity;->startActivity(Landroid/content/Intent;)V

    .line 83
    iget-object v1, p0, Lcom/evancharlton/mileage/ImportActivity$1;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/ImportActivity;->finish()V

    .line 84
    return-void
.end method
