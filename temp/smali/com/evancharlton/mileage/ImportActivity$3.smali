.class Lcom/evancharlton/mileage/ImportActivity$3;
.super Ljava/lang/Object;
.source "ImportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/ImportActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/ImportActivity;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/ImportActivity;I)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/evancharlton/mileage/ImportActivity$3;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    iput p2, p0, Lcom/evancharlton/mileage/ImportActivity$3;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity$3;->this$0:Lcom/evancharlton/mileage/ImportActivity;

    iget v1, p0, Lcom/evancharlton/mileage/ImportActivity$3;->val$id:I

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/ImportActivity;->removeDialog(I)V

    .line 124
    return-void
.end method
