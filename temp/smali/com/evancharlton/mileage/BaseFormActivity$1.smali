.class Lcom/evancharlton/mileage/BaseFormActivity$1;
.super Ljava/lang/Object;
.source "BaseFormActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/BaseFormActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/BaseFormActivity;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/BaseFormActivity;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/evancharlton/mileage/BaseFormActivity$1;->this$0:Lcom/evancharlton/mileage/BaseFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/evancharlton/mileage/BaseFormActivity$1;->this$0:Lcom/evancharlton/mileage/BaseFormActivity;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/BaseFormActivity;->setFields()V

    .line 54
    iget-object v1, p0, Lcom/evancharlton/mileage/BaseFormActivity$1;->this$0:Lcom/evancharlton/mileage/BaseFormActivity;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/BaseFormActivity;->getDao()Lcom/evancharlton/mileage/dao/Dao;

    move-result-object v1

    iget-object v2, p0, Lcom/evancharlton/mileage/BaseFormActivity$1;->this$0:Lcom/evancharlton/mileage/BaseFormActivity;

    invoke-virtual {v1, v2}, Lcom/evancharlton/mileage/dao/Dao;->save(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/evancharlton/mileage/BaseFormActivity$1;->this$0:Lcom/evancharlton/mileage/BaseFormActivity;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/BaseFormActivity;->postSaveValidation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/evancharlton/mileage/BaseFormActivity$1;->this$0:Lcom/evancharlton/mileage/BaseFormActivity;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/BaseFormActivity;->saved()V
    :try_end_0
    .catch Lcom/evancharlton/mileage/exceptions/InvalidFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
    iget-object v1, p0, Lcom/evancharlton/mileage/BaseFormActivity$1;->this$0:Lcom/evancharlton/mileage/BaseFormActivity;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/BaseFormActivity;->handleInvalidField(Lcom/evancharlton/mileage/exceptions/InvalidFieldException;)V

    goto :goto_0
.end method
