.class Lcom/evancharlton/mileage/BaseFormActivity$3;
.super Ljava/lang/Object;
.source "BaseFormActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/BaseFormActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/BaseFormActivity;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/BaseFormActivity;I)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/evancharlton/mileage/BaseFormActivity$3;->this$0:Lcom/evancharlton/mileage/BaseFormActivity;

    iput p2, p0, Lcom/evancharlton/mileage/BaseFormActivity$3;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/evancharlton/mileage/BaseFormActivity$3;->this$0:Lcom/evancharlton/mileage/BaseFormActivity;

    iget v1, p0, Lcom/evancharlton/mileage/BaseFormActivity$3;->val$id:I

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/BaseFormActivity;->removeDialog(I)V

    .line 121
    iget-object v0, p0, Lcom/evancharlton/mileage/BaseFormActivity$3;->this$0:Lcom/evancharlton/mileage/BaseFormActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/BaseFormActivity;->getDao()Lcom/evancharlton/mileage/dao/Dao;

    move-result-object v0

    iget-object v1, p0, Lcom/evancharlton/mileage/BaseFormActivity$3;->this$0:Lcom/evancharlton/mileage/BaseFormActivity;

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/dao/Dao;->delete(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/evancharlton/mileage/BaseFormActivity$3;->this$0:Lcom/evancharlton/mileage/BaseFormActivity;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/BaseFormActivity;->deleted()V

    .line 124
    :cond_0
    return-void
.end method
