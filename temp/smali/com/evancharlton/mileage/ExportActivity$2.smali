.class Lcom/evancharlton/mileage/ExportActivity$2;
.super Ljava/lang/Object;
.source "ExportActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 66
    iput-object p1, p0, Lcom/evancharlton/mileage/ExportActivity$2;->this$0:Lcom/evancharlton/mileage/ExportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
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
    .line 69
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/evancharlton/mileage/ExportActivity$2;->this$0:Lcom/evancharlton/mileage/ExportActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/ExportActivity;->access$400(Lcom/evancharlton/mileage/ExportActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/evancharlton/mileage/ExportActivity$2;->this$0:Lcom/evancharlton/mileage/ExportActivity;

    invoke-static {v1}, Lcom/evancharlton/mileage/ExportActivity;->access$300(Lcom/evancharlton/mileage/ExportActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/evancharlton/mileage/ExportActivity$2;->this$0:Lcom/evancharlton/mileage/ExportActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/evancharlton/mileage/ExportActivity;->access$500(Lcom/evancharlton/mileage/ExportActivity;Z)V

    .line 71
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
    .line 75
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
