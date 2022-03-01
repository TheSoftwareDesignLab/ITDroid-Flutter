.class Lcom/evancharlton/mileage/BaseFormActivity$2;
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
    .line 127
    iput-object p1, p0, Lcom/evancharlton/mileage/BaseFormActivity$2;->this$0:Lcom/evancharlton/mileage/BaseFormActivity;

    iput p2, p0, Lcom/evancharlton/mileage/BaseFormActivity$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/evancharlton/mileage/BaseFormActivity$2;->this$0:Lcom/evancharlton/mileage/BaseFormActivity;

    iget v1, p0, Lcom/evancharlton/mileage/BaseFormActivity$2;->val$id:I

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/BaseFormActivity;->removeDialog(I)V

    .line 131
    return-void
.end method
