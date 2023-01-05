.class Lcom/evancharlton/mileage/ImportActivity$2;
.super Ljava/lang/Object;
.source "ImportActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 91
    iput-object p1, p0, Lcom/evancharlton/mileage/ImportActivity$2;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity$2;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/ImportActivity;->access$400(Lcom/evancharlton/mileage/ImportActivity;)Lcom/evancharlton/mileage/ImportActivity$FileLoader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity$2;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    new-instance v3, Lcom/evancharlton/mileage/ImportActivity$FileLoader;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/evancharlton/mileage/ImportActivity$FileLoader;-><init>(Lcom/evancharlton/mileage/ImportActivity$1;)V

    invoke-static {v0, v3}, Lcom/evancharlton/mileage/ImportActivity;->access$402(Lcom/evancharlton/mileage/ImportActivity;Lcom/evancharlton/mileage/ImportActivity$FileLoader;)Lcom/evancharlton/mileage/ImportActivity$FileLoader;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity$2;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/ImportActivity;->access$400(Lcom/evancharlton/mileage/ImportActivity;)Lcom/evancharlton/mileage/ImportActivity$FileLoader;

    move-result-object v0

    iget-object v3, p0, Lcom/evancharlton/mileage/ImportActivity$2;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-virtual {v0, v3}, Lcom/evancharlton/mileage/ImportActivity$FileLoader;->attach(Lcom/evancharlton/mileage/ImportActivity;)V

    .line 98
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity$2;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/ImportActivity;->access$400(Lcom/evancharlton/mileage/ImportActivity;)Lcom/evancharlton/mileage/ImportActivity$FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evancharlton/mileage/ImportActivity$FileLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v3, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v3, :cond_1

    .line 99
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity$2;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/ImportActivity;->access$400(Lcom/evancharlton/mileage/ImportActivity;)Lcom/evancharlton/mileage/ImportActivity$FileLoader;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Lcom/evancharlton/mileage/ImportActivity$FileLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity$2;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/ImportActivity;->access$300(Lcom/evancharlton/mileage/ImportActivity;)Landroid/widget/CheckBox;

    move-result-object v3

    if-nez p3, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 103
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity$2;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/ImportActivity;->access$300(Lcom/evancharlton/mileage/ImportActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz p3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 104
    return-void

    :cond_2
    move v0, v2

    .line 102
    goto :goto_0

    :cond_3
    move v1, v2

    .line 103
    goto :goto_1
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
    .line 108
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
