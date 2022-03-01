.class Lcom/evancharlton/mileage/BaseListActivity$2;
.super Ljava/lang/Object;
.source "BaseListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/BaseListActivity;->showDeleteDialog(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/BaseListActivity;

.field final synthetic val$deleteAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/BaseListActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/evancharlton/mileage/BaseListActivity$2;->this$0:Lcom/evancharlton/mileage/BaseListActivity;

    iput-object p2, p0, Lcom/evancharlton/mileage/BaseListActivity$2;->val$deleteAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/evancharlton/mileage/BaseListActivity$2;->val$deleteAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 172
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 173
    return-void
.end method
